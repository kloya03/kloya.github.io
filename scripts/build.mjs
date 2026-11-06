import fs from 'node:fs/promises';
import path from 'node:path';
import {fileURLToPath} from 'node:url';
const root=path.resolve(path.dirname(fileURLToPath(import.meta.url)),'..'),out=path.join(root,'_site');
const read=p=>fs.readFile(path.join(root,p),'utf8');
const esc=s=>String(s??'').replaceAll('&','&amp;').replaceAll('<','&lt;').replaceAll('>','&gt;').replaceAll('"','&quot;');
function parse(t){const m=t.match(/^---\r?\n([\s\S]*?)\r?\n---\r?\n([\s\S]*)$/);if(!m)throw Error('Missing front matter');const meta={};for(const l of m[1].split(/\r?\n/)){if(!l.trim()||l.trim().startsWith('#'))continue;const i=l.indexOf(':');meta[l.slice(0,i).trim()]=JSON.parse(l.slice(i+1).trim());}return{meta,body:m[2]};}
const render=(t,v)=>t.replace(/{{\s*(\w+)\s*}}/g,(_,k)=>{if(!(k in v))throw Error('Unknown template field '+k);return v[k];});
async function collection(d){return Promise.all((await fs.readdir(path.join(root,d))).filter(f=>f.endsWith('.html')).map(async f=>parse(await read(d+'/'+f))));}
const site=JSON.parse(await read('_data/site.json')),nav=JSON.parse(await read('_data/navigation.json'));
const common={site_name:esc(site.name),site_description:esc(site.description),year:String(new Date().getFullYear())},includes={};
for(const f of ['head','header','profile','footer'])includes[f]=await read('_includes/'+f+'.html');
const layout=await read('_layouts/default.html'),papers=(await collection('_publications')).sort((a,b)=>b.meta.year-a.meta.year||a.meta.order-b.meta.order);
let publications='<div class="publications">',publicationNumber=papers.length;
for(const p of papers){publications+='<article id="'+esc(p.meta.id)+'">'+p.body.replace('<h3>','<h3>'+ (publicationNumber--)+'. ')+'</article>';}
publications+='</div>';
let pages=await collection('_pages');
if(site.researchPublished){const gallery=parse(await read('_drafts/research-gallery.html'));pages=pages.filter(p=>p.meta.nav!=='research');pages.push(gallery,...(await collection('_research')).filter(p=>p.meta.published));}
if(site.postsPublished)for(const p of (await collection('_posts')).filter(p=>p.meta.published)){p.body=render(await read('_layouts/post.html'),{content:p.body,post_date:esc(p.meta.date)});pages.push(p);}
// Only the generated _site directory is replaced, never source files.
if(path.resolve(out)!==path.join(root,'_site'))throw Error('Invalid build directory');
try{if((await fs.lstat(out)).isSymbolicLink())throw Error('_site cannot be a symlink');await fs.rm(out,{recursive:true});}catch(e){if(e.code!=='ENOENT')throw e;}
await fs.mkdir(out,{recursive:true});for(const d of ['assets','images','files'])await fs.cp(path.join(root,d),path.join(out,d),{recursive:true});if(site.researchPublished)await fs.cp(path.join(root,'videos'),path.join(out,'videos'),{recursive:true});
const names=new Set();for(const p of pages){const name=p.meta.permalink;if(!/^[a-z0-9-]+\.html$/i.test(name)||names.has(name))throw Error('Invalid or duplicate permalink '+name);names.add(name);const v={...common,page_title:esc(p.meta.title),publications,navigation:nav.map(n=>'<a href="'+esc(n.url)+'"'+(n.key===p.meta.nav?' aria-current="page"':'')+'>'+esc(n.label)+'</a>').join('')};v.content=render(p.body,v);for(const[k,t]of Object.entries(includes))v[k]=render(t,v);await fs.writeFile(path.join(out,name),render(layout,v));}
await fs.writeFile(path.join(out,'.nojekyll'),'');
const errors=[];for(const name of names){const h=await fs.readFile(path.join(out,name),'utf8');for(const m of h.matchAll(/(?:href|src)="([^"]+)"/g)){const u=m[1].split('#')[0];if(!u||/^(https?:|mailto:|\/)/.test(u))continue;try{await fs.access(path.join(out,u));}catch{errors.push(name+': '+u);}}}if(!site.researchPublished&&[...names].some(n=>n.startsWith('research-')))errors.push('Research draft exposed');if(errors.length)throw Error(errors.join(', '));console.log('Built '+names.size+' pages; local links verified; research '+(site.researchPublished?'enabled':'Coming soon')+'.');

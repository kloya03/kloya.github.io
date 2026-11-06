import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';
import {fileURLToPath} from 'node:url';
const root=path.resolve(path.dirname(fileURLToPath(import.meta.url)),'../_site');
const port=Number(process.env.PORT||8001),mime={'.html':'text/html; charset=utf-8','.css':'text/css','.js':'text/javascript','.jpg':'image/jpeg','.svg':'image/svg+xml','.pdf':'application/pdf','.mp4':'video/mp4'};
http.createServer((req,res)=>{try{let target=path.resolve(root,'.'+decodeURIComponent(new URL(req.url,'http://localhost').pathname));if(target!==root&&!target.startsWith(root+path.sep)){res.writeHead(403).end();return;}if(target===root||target.endsWith(path.sep))target=path.join(target,'index.html');const stat=fs.statSync(target);if(!stat.isFile())throw Error('Not a file');res.writeHead(200,{'Content-Type':mime[path.extname(target)]||'application/octet-stream','Content-Length':stat.size,'Cache-Control':'no-cache'});fs.createReadStream(target).pipe(res);}catch{res.writeHead(404).end('Not found');}}).listen(port,'127.0.0.1',()=>console.log('Preview: http://127.0.0.1:'+port));

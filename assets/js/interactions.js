const themeButton = document.querySelector('.theme-toggle');
function updateThemeButton() {
  const dark = document.documentElement.dataset.theme === 'dark';
  themeButton.setAttribute('aria-pressed', String(dark));
  themeButton.setAttribute('aria-label', `Switch to ${dark ? 'white' : 'black'} background`);
  themeButton.querySelector('.theme-label').textContent = dark ? 'Light' : 'Dark';
}
themeButton.addEventListener('click', () => {
  const theme = document.documentElement.dataset.theme === 'dark' ? 'light' : 'dark';
  document.documentElement.dataset.theme = theme;
  try { localStorage.setItem('portfolio-theme', theme); } catch (_) {}
  updateThemeButton();
});
updateThemeButton();
document.querySelectorAll('.research-panel').forEach(panel => {
  panel.addEventListener('toggle', () => {
    if (!panel.open) panel.querySelectorAll('video').forEach(video => video.pause());
  });
});
document.querySelectorAll('video:not(.card-video)').forEach(video => {
  video.addEventListener('play', () => {
    document.querySelectorAll('video:not(.card-video)').forEach(other => { if (other !== video) other.pause(); });
  });
});
function openLinkedPanel() {
  const id = location.hash.slice(1);
  const panel = document.getElementById(id);
  if (panel?.classList.contains('research-panel')) panel.open = true;
}
openLinkedPanel();
window.addEventListener('hashchange', openLinkedPanel);

const motionButton = document.querySelector('.motion-toggle');
const reducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
let previewsPaused = reducedMotion.matches;
const previewVideos = [...document.querySelectorAll('.card-video')];
function syncPreviews(){
 document.documentElement.classList.toggle('motion-paused', previewsPaused);
 if(motionButton){motionButton.textContent=previewsPaused?'Play previews':'Pause previews';motionButton.setAttribute('aria-pressed',String(previewsPaused));}
 previewVideos.forEach(v=>{if(previewsPaused||document.hidden||v.dataset.visible!=='true')v.pause();else v.play().catch(()=>{});});
}
const previewObserver = new IntersectionObserver(entries=>{entries.forEach(e=>{e.target.dataset.visible=String(e.isIntersecting);});syncPreviews();},{threshold:0.15});
previewVideos.forEach(v=>previewObserver.observe(v));
motionButton?.addEventListener('click',()=>{previewsPaused=!previewsPaused;syncPreviews();});
reducedMotion.addEventListener('change',e=>{previewsPaused=e.matches;syncPreviews();});
document.addEventListener('visibilitychange',syncPreviews);
syncPreviews();

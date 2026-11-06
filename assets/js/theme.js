// Apply the saved preference before the page paints. Storage may be disabled.
(() => {
  let theme = 'light';
  try { theme = localStorage.getItem('portfolio-theme') === 'dark' ? 'dark' : 'light'; } catch (_) {}
  document.documentElement.dataset.theme = theme;
})();

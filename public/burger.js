document.querySelector('.navbar__burger__button').addEventListener('click', () => {
  document.getElementById('sidebar').classList.toggle('hidden');
  document.getElementById('filter').classList.toggle('hidden');
});

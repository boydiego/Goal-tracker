function init() {

  const pagesIcon = document.querySelector('.fa-bookmark');
  const toggleMenu = document.querySelector('.menu-book');

  pagesIcon.addEventListener('click', function() {
    toggleMenu.classList.toggle('active-book');
  });

}

document.addEventListener('DOMContentLoaded', init);
function init() {

  const userIcon = document.querySelector('.fa-user');
  const toggleMenu = document.querySelector('.menu');

  userIcon.addEventListener('click', function() {
    toggleMenu.classList.toggle('active');
  });

}

document.addEventListener('DOMContentLoaded', init);
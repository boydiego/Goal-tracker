function init() {

  const titleContainer = document.querySelector('.title-container');
  const showSettings = document.querySelector('.show-settings');

  titleContainer.addEventListener('mouseover', function() {
    showSettings.classList.toggle('active');
  });

}

document.addEventListener('DOMContentLoaded', init);
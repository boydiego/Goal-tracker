function init() {

  const titleContainer = document.querySelector('.title-container');
  const showSettings = document.querySelector('.show-settings');

  titleContainer.addEventListener('mouseover', function() {
    showSettings.classList.toggle('active');
  });

  titleContainer.addEventListener('click', function() {
    titleContainer.classList.toggle('done')
  })

}

document.addEventListener('DOMContentLoaded', init);
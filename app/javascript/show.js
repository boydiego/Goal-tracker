function init() {

  const titleContainer = document.querySelector('.title-container');
  const showSettings = document.querySelector('.show-settings');
  const stepMarkers = document.querySelectorAll('.step-marker');

  titleContainer.addEventListener('mouseover', function() {
    showSettings.classList.toggle('active');
  });

  titleContainer.addEventListener('click', function() {
    titleContainer.classList.toggle('done');
  })

  stepMarkers.forEach(function(stepMarker) {
    stepMarker.addEventListener('click', function() {
      stepMarker.classList.toogle('done');
    })
  })

}

document.addEventListener('DOMContentLoaded', init);
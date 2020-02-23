$(function(){ 
  // var camera = document.querySelector('.post-new-image');

  

  // camera.addEventListener('click', function() {
  //   var image = document.getElementById('box');
  //   image.checked = true;
  // });


  $('.post-new-image').on('click', function(){
    
    var btn = document.getElementById('img-file');
    btn.checked = true;
  });
});



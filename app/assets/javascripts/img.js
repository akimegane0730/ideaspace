$(function(){ 


  

  file_img.onload = function(){
    const buildFileField = (num)=> {
      const html = `<label class="post-new-image">
                    <div class="input-area" id="box">
                    <input id="img-file" style="display:none;" type="file" name="post[images_attributes][0][image]">
                    </div>
                    </label>`
      return html;
    }
    $('.post-new-inage').append(buildFileField)
  };

});



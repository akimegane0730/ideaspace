$(function(){ 

  var file_box = document.querySelector('input[type = file]')

  var dataBox = new DataTransfer();

  $('#img-file').change(function(){
    $.each(this.files, function(i, file){
      var file_img = new FileReader();
  
      // dataBox.items.add(file)
  
      // file_box.files = dataBox.files
  
      var num = $('.item-img').length + 1 + i
      file_img.readAsDataURL(file);
  
      // 投稿した画像が10枚になったらフォームを消す
      if(num == 1){
        $('#box').css('display', 'none')
      }
      // 画像をテキストボックスに入れた際に追加するビュー
      file_img.onload = function(){
        var src = file_img.result
        var html = `<div class = 'item-img' data-image = '${(file.name)}'>
                      <div class = 'item-img_content'>
                        <div class = 'item-img_content_icon'>
                          <img src="${src}" width="460" height="460">
                        </div>
                      </div>
                    </div>`
                        
        $('#box').before(html);
      };
      $('#box').attr('class', `sell-image_box-${num}`)
    });
  });

  $(document).on('click', '.item-img_operetion_delete', function(){
    var delete_img = $(this).parents('.item-img')
    var delete_name = $(delete_img).data('image')
    if(file_box.files.length == 1){
      $('input[type=file]').val(null)
      dataBox.clearData();
    }else{
      $.each(file_box.files, function(i, input){
        if(input.name == delete_name){
          dataBox.items.remove(i)
        }
      })
      file_box.files = dataBox.files
    }
    delete_img.remove()
    
    var num = $('.item-img').length
    $('#box').show()
    $('#box').attr('class', `sell-image_box-${num}`)
  })

  $('.item-img_operetion_delete').on('click', function(){
    var btn = document.getElementById('check_box');
    btn.checked = true;
  });
});



$(document).ready(function(){
    var height_card = $('.card_index_flat').height();

  $('#page_index_flat .card_index_flat').css({
    'margin-right': height_card * 0.04,
    'margin-left': height_card * 0.04
  })
  $('#page_index_flat .flat_picture').css({
    'height' : height_card * 0.7
  })
  $('#page_index_flat .bottom_card_flat').css({
    'height' : height_card * 0.3
  })

  $('#page_index_flat .flat_price').css({
    'height' : height_card * 0.185,
    'margin-right': height_card * 0.04,
    'width' : height_card * 0.30,
    'margin-bottom': height_card * 0.10
  })


  $('#page_index_flat #prop_pictures').css({
    'height' : height_card * 0.28,
    'width' : height_card * 0.28,
    'margin-right': height_card * 0.05,
    'margin-bottom': height_card * -0.1
  })
});

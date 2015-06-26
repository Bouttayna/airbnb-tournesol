$(document).ready(function(){
  var height_all = $('#banner').height();
  $('#search_home').css({
      'height': height_all * 0.52
    })

  $(document).scroll(function() {

      $('#search_home').animate({
        'height': height_all * 0.55
      }, 2000);

  });
});

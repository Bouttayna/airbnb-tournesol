$(document).ready(function(){
  var height_page = $(window).height()
  var width_page = $(window).width()
  $('#show .image').css({
   'height' : height_page * 0.65,
  })

  $('#show .flat_content').css({
   'margin-top' : height_page * 0.65 - $('#back_link').height(),
  })
  $('#show #presentation_flat').css({
   'height' : height_page * 0.15,
   'padding-left': width_page * 0.3,
   'padding-right': width_page * 0.3
  })
  $('#show .details').css({
   'height' : height_page * 0.15,
   'width' : $('#presentation_flat').width() * 0.25
  })
  $('#show #proprio').css({
   'height' : height_page * 0.075,
   'width' : height_page * 0.075
  })
})

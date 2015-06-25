$(document).ready(function(){
  $('#locataires_details').hide();
  $('#close_icon').hide();

  $('#link_locataires').on('click', function(event){
    $(this).addClass("selected");
    $('#locataires_details').show(1000);
    $('#close_icon').show(1200);
    $('#locataires_details h4').removeClass('hover');
  });
  $('#close_icon').on('click', function(event){
    $('#link_locataires').removeClass("selected");
    $('#locataires_details').hide(1200);
    $(this).hide(1400);
  });

  // $('#account_link').on('click', function(){
  //   $('#link_locataires').removeClass("selected");
  //   $('#locataires_details').hide(1500);
  //   $('#close_icon').hide(2000);

  // })
});

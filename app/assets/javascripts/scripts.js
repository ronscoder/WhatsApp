$(document).ready(function(){
  $('.badge_delete').hide();
  $('#btnEdit').click(function(){
    $('.badge_delete').toggle(
      function(){
        $('#btnEdit').text("Done");
      }, function(){
        $('#btnEdit').text('Edit');
      }
    );
  });
});

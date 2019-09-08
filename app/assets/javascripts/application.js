//= require activestorage
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require rails-ujs
//= require popper
//= require turbolinks
//= require bootstrap
//= require chartkick
//= require_tree .
//= require Chart.bundle

$(document).ready(function(){


   $(".note-textarea").click(function(){
      if($(this).attr("rows") == 1) {
         $(this).attr('rows','2').addClass("mb-1")
      } else {
         $(this).attr('rows','1').addClass("mb-0")
      }
   });



   $('button.IN-not-assessed').click(function(){
      $('.mental-status select').val('Not Assessed').trigger('change');
   })



});

// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function(){
  var incrementor = 1;


  $('#the-back-button').css('display', 'none');
  $('#the-next-button').css('display', 'none');

  $('#start-button').on("click", function(){
    $('.video-container').first().css('display', "inline");
    $('#the-next-button').css('display', 'inline');
    $('#the-back-button').css("display", "none");
    $('#start-button').css('display', "none");
    $('#v1').attr('src', $('#v1').attr('data-src'));
  });


  $('#the-next-button').on("click", function(){
    $('#d'+incrementor).css("display", "none");
    $('#v'+incrementor).removeAttr('src')
    $('#d'+(incrementor+1)).css("display", "inline");
    $('#v'+(incrementor+1)).attr('src', $('#v'+(incrementor+1)).attr('data-src'));
    incrementor++;
      if(incrementor === $('.video-container').length){
        $('#the-next-button').css('display', "none");
      }
      else {
        $('#the-back-button').css('display', 'inline');
      }
  });

  $('#the-back-button').on("click", function(){
    $('#d'+incrementor).css("display", "none");
    $('#v'+incrementor).removeAttr('src');
    $('#d'+(incrementor-1)).css("display", "inline");
    $('#v'+(incrementor-1)).attr('src', $('#v'+(incrementor-1)).attr('data-src'));
    incrementor--;
      if(incrementor === 1){
        $('#the-back-button').css('display', "none");
      }
      else {
        $('#the-next-button').css('display', 'inline');
      }
  });


});

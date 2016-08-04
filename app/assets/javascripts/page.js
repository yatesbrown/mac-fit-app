// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function(){
  var incrementor = 1;
  $('.video-container').first().css("display", "inline");
  $('#the_button').on("click", function(){
    $('#v'+incrementor).css("display", "none");
    $('#v'+(incrementor+1)).css("display", "inline");
    incrementor++;
  });
});

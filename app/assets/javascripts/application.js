// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(function() {
   $('input').focusout(function() {
    var input_error = $(this).attr('title');
    var input_id = $(this).attr('id');

      if(!$(this).val()) {
        $('#' + input_id).next().remove('p');
        $(this).after("<p class='error_messages'>" + input_error + '</p>');
      }
      else {
        $('#' + input_id).next().remove('p');
      }
  });



//  SANDY CODE:

  $('#username').focusout(function() {
        // … grab the value
        var val = $(this).val();

        // … send username to the server
        var jsonResponse = $.getJSON(
            "/users/new.json",
            // METHOD TO SET THE PARAMS HASH IN JS
            { username: val },
            function(theDataBeingReturned, myGreatStatus, XHRobject) {
                console.log(theDataBeingReturned);
                console.log(myGreatStatus);
                console.log(XHRobject);
                // $('.msg').remove();
                // if (theDataBeingReturned['valid'] == "1") {
                //     // … did the serve say it was a valid username?
                //     $('#username').after('<p class="msg">you did it!!!!</p>');
                // } else {
                //     // … or did the serve say it was taken?
                //     $('#username').closest('.form-group').addClass('has-error');
                //     $('#username').after('<p class="msg">no good</p>');
                // }
            }
        );
    });




});



$(document).ready(function() {

  console.log('page read');

  var myName;

  var callBack = function(data) {
    console.log('got it!');
    myName = 'cool';

    $('#body').html(data.one);
  };

  $.getJSON('/hi.json', callBack);

  var timer = setInterval(function() {

    console.log('requesting time');

    $.ajax('/time.json').done(function(data) {

      var $stamp = $('<p>').html(data.now);

      $('body').append($stamp);

    });
  }, 3000)

  // $('#get-time').on('click', function() {

  //    $.ajax('/time.json').done(function(data) {

  //     $('#time').html(data.now);

  //     });

  //   });

  });

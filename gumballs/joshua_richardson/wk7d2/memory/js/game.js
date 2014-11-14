var count = 0

var cards = _.shuffle(['b','b','c','c','d','d']);

_.each(cards, function(card) {
  //create new card
  var $card = $('<div><').addClass('card-container');

  var $flipper = $('<div>').addClass('flipper');
  var $front = $('<div>').addClass('front');
  var $back = $('<div>').addClass('back').html(card);

  $flipper.append($front);
  $flipper.append($back);
  $card.append($flipper);

  // append to the game div
  $('#game').append($card);
});

$('.flipper').on('click', function() {

  if ($('.showing').length >= 2) {
    // hide the front, show the back
    return;
  }

  $card = $(this);

  $card.addClass('showing')
  $card.find('.back').css('backface-visibility', 'visible');
  $card.find('.front').hide();

 setTimeout(function() {
  $card.find('.back').css('backface-visibility', 'hidden');
  $card.find('.front').show();
  $card.removeClass('showing');
}, 2500);

});










// $('.card').on('click', function() {
//      $(this).html('100');
// })
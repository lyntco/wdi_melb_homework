var cards = _.shuffle(['a','a','b','b','c','c','d','d']);
console.log(cards);

_.each(cards, function(card) {

  // create a new card
  var $card = $('<div>').addClass('card-container')

  var $flipper = $('<div>').addClass('flipper');
  var $front = $('<div>').addClass('front');
  var $back = $('<div>').addClass('back').html(card);

  $flipper.append($front);
  $flipper.append($back);
  $card.append($flipper);

  // append to the game div
  $('#game').append($card);

});

var showingCards = [];








$('.flipper').on('click', function() {
  // hide the front, show the back
  if ($('.showing').length === 2) {
    showingCards = [];
    return;
  }
 
  var $card = $(this);

  $card.addClass('showing');
  showingCards.push($card)
  console.log('add showing');
  console.log(showingCards);
  $card.find('.back').css('backface-visibility', 'visible');
  $card.find('.front').hide();

  setTimeout(function() {
    $card.find('.back').css('backface-visibility', 'hidden');
    $card.find('.front').show();
    $card.removeClass('showing');
  }, 2500);



});
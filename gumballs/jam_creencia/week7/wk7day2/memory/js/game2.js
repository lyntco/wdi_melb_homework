var cards = ['a','a','b','b','c','c','d','d'];

var shuffledCards = [];
 

var createCards = function() {
  var $numOfCards = $('#pairs-input').val() * 2;
  shuffledCards = _.shuffle(cards.slice(0, $numOfCards));
  console.log(shuffledCards);
  _.each(shuffledCards, function(card) {
   
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

}


$('#set-cards').on('click', createCards);
 
// $(document).on('click', function(event) {
//   console.log(event);
// })

$('.flipper').on('click', function() {
  console.log(this);
  // hide the front, show the back
  if ($('.showing').length >= 2) {
    return;
  }
 
  var $card = $(this);
  console.log(this);
 
  $card.addClass('showing');
  $card.find('.back').css('backface-visibility', 'visible');
  $card.find('.front').hide();
 
  setTimeout(function() {
    $card.find('.back').css('backface-visibility', 'hidden');
    $card.find('.front').show();
    $card.removeClass('showing');
  }, 500);
 
});
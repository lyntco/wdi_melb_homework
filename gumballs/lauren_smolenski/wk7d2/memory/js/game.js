var cards = _.shuffle(['a', 'a', 'b', 'b', 'c', 'c', 'd', 'd']);

_.each(cards, function(card) {
  var $card = $('<div>').addClass('card-container')

  var $flipper = $('<div>').addClass('flipper');
  var $front = $('<div>').addClass('front');
  var $back = $('<div>').addClass('back').html(card);

  $flipper.append($front);
  $flipper.append($back);
  $card.append($flipper);

  $('#game').append($card);
});

$('.flipper').on('click', function () {

  var $card = $(this); // the one that we clicked on

  // card already matched
  if ($card.is('.matched')) {
    return;
  }

  // too much showing
  if ($('.showing').length >= 2){
    return;
  }

  $card.addClass('showing');
  $card.find('.back').css('backface-visibility', 'visible');
  $card.find('.front').hide();

  if ($('.showing').length === 2){
    // we have 2 cards flipped

    if($('.showing').eq(0).text() === $('.showing').eq(1).text()){
      // matched !!!!!!!!!!!

      $('.showing').addClass('matched');
      $('.flipper').removeClass('showing');

      if ($('.matched').length === 8) {
        $('.flipper').each(function(index, card) {
          $(card).delay(200).fadeOut();
        })
      }
    } else {

      setTimeout(function() {

        $('.showing').find('.back').css('backface-visibility', 'hidden');
        $('.showing').find('.front').show();

        $('.flipper').removeClass('showing');
      
      }, 1500);    
      
    }


  }

});

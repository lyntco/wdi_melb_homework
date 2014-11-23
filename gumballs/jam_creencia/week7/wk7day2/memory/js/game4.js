// code along thursday

var cards = _.shuffle(['a', 'a', 'b', 'b', 'c', 'c', 'd', 'd']);

console.log(cards);

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
	// card we clicked on
		var $card = $(this);

	// card already matched
	if ($card.is('.matched')) {
		return
	}

	// too much showing
	if ($('.showing').length >= 2) {
		return
	}

	$card.addClass('showing');
	$card.find('.back').css('backface-visibility', 'visible');
	$card.find('.front').hide();

	if ($('.showing').length === 2){
			// two cards are flipped

			if ($('.showing').eq(0).text() === $('.showing').eq(1).text()) {
				// the cards are matching
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
					$('.showing').removeClass('showing');
				
				}, 1500);
			}
	}
});
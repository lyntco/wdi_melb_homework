var cards = ['a','a','b','b','c','c','d','d','e','e'];

var shuffled = [];

var clickCounter = 0;

var cardOne = '';

var cardTwo = '';

var opened = [];

var num = 0;


var createCards = function() {
	num = $('#pairs-input').val();
	var doubleNum = num * 2
	shuffled = _.shuffle(cards.slice(0, doubleNum))
	console.log(shuffled);

	for (var i = 0; i< doubleNum; i++) {
		var $card = $('<div>')
			.attr('class', 'card')
			.attr('data-card-value', shuffled[i])
			.html('?');

		$('#game').append($card);
	}



	$('.card').on('click', function() {

		$(this).html($(this).attr('data-card-value'));
		clickCounter += 1;
		console.log(clickCounter);

		if (clickCounter === 1) {
			cardOne = $(this);
		}

		if (clickCounter === 2) {
			cardTwo = $(this);
		}
		checkClicks();
		
	});


};

// 
var checkWin = function() {
	if (opened.length === num) {
		console.log('same same');
	}
};


var checkClicks = function() {
	if (clickCounter === 2) {
	
		console.log('two clicks');
		clickCounter = 0;


		if (cardOne.attr('data-card-value') === cardTwo.attr('data-card-value')) {
			console.log('equal');
			cardOne = cardOne.attr('data-card-value');
			cardTwo = cardTwo.attr('data-card-value');
			// still working on determining win
			opened.push(cardOne);
			cardOne = '';
			cardTwo = '';

		} else {
			setTimeout( function() {
			cardOne = cardOne.html('?');
			cardTwo = cardTwo.html('?');

			cardOne = '';
			cardTwo = '';

		}, 500);

		}
	}
	// 
	checkWin();
}


$('#set-cards').on('click', createCards);


// $(document).on('click', function(event) {
//   console.log(event);
// })





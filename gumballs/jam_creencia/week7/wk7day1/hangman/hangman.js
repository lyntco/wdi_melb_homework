var word = {

	wordList: ['pudding', 'cake', 'brownies'],

	secretWord: [],

	blankWord: [],


	setSecretWord: function() {
		this.secretWord = _.sample(this.wordList).split('');
		this.blankWord = Array(this.secretWord.length+1).join('_').split('');
	
		$('#secretWordBlanks').html(this.blankWord.join(' '));
		console.log(this.secretWord);
	},

	checkLetters: function() {
		var guessLetter = $('#letterField').val();
		// checks if the guessed letter is in the secret word
		var indexOfGuessLetter = this.secretWord.indexOf(guessLetter);
			// if not in secret word, push to used letters list, if in the word, replace the blank with the letter
			if (indexOfGuessLetter === -1) {
				player.guessedLetters.push(guessLetter);
			} else { 
					_.each(this.secretWord, function(secretLetter, index) {
						if (secretLetter === guessLetter) {
							word.blankWord[index] = guessLetter;
						} 
					})
				};


		console.log(this.blankWord);
		$('#secretWordBlanks').html(this.blankWord.join(' '));

		game.updateDisplay();
		$('#letterField').val('');

		if (this.blankWord.join('') === this.secretWord.join('')) {
			player.checkWin();
		}

		

	},

};


var player = {
	MAX_GUESSES: 5,

	guessedLetters: [],

	guessedWords: [],

	guessesLeft: function() {
		return (this).MAX_GUESSES - (this.guessedLetters.length + this.guessedWords.length);
	},

	makeGuess: function() {

		word.checkLetters();

	},

	checkWin: function() {
		var guessWord = $('#wordField').val();

	 	player.guessedWords.push(guessWord);
	
		if (guessWord === word.secretWord.join('') || word.blankWord.join('') === word.secretWord.join('')) {
			$('#gameStatus').html('Congratulations! You guessed right!');
		} else {
			$('#gameStatus').html('Sorry, try again');
			game.updateDisplay();
			$('#wordField').val('');
		};
	}, 

	checkLose: function() {
		if (this.guessesLeft() === 0) {
			return 'Game Over';
		}
	}

};


var game = {

	resetGame: function() {
		word.setSecretWord();
		player.guessedLetters = [];
		player.guessedWords = [];

	},

	giveUp: function() {

	},

	updateDisplay: function() {
	
		$('#guessedLetters').html(player.guessedLetters);
		$('#guessedWords').html(player.guessedWords.join(', '));
		$('#guessesLeft').html(player.guessesLeft());
		$('#gameStatus').html(player.checkLose());
		
	
	}

};



$(document).ready(function() {
	game.resetGame();
	game.updateDisplay();

	$('#letterField').on('keyup', function(event) {
    if (event.which === 13) {
    	console.log('enter');
 			player.makeGuess();

      $('#letterField').val('');
    }
  });


  $('#wordField').on('keyup', function(event) {
    if (event.which === 13) {
    	console.log('enter');
 			player.checkWin();
 			
      $('#wordField').val('');
    }
  });
	
	// $('#guessWordButton').on('click', player.checkWin);
	$('#giveUpButton').on('click', game.giveUp);
	$('#resetButton').on('click', game.resetGame);

})









var word = {

	secretWord: '',
	wordList: ['house', 'brick', 'tile'], // Only handling the case of words without duplicates at this stage

	setSecretWord: function() {
		secretWord = word.wordList[_.random(word.wordList.length-1)];
		console.log(secretWord);
	},

	checkLetters: function() {
	}
}

var player = {

	guessesLeft: 10,
	correctLetters: [],
	guessedLettersSoFar: [], // Just for showing what the user has already guessed

	makeGuess: function() {
		if (player.guessesLeft > 0) {
			console.log('go pressed to make a guess');
			$guessedLetter = $('#letterField'); // Why does this work without referencing it like player.guessedLetter...
			console.log($guessedLetter.val());
			// add the letter to the array
			player.guessedLettersSoFar.push($guessedLetter.val());
			console.log(player.guessedLettersSoFar);
			if (secretWord.search($guessedLetter.val()) != -1) { // The letter is in the word
				console.log('correct guess');
				var $output = $('#wordString');
				$output.html('Correct guess...');
				player.correctLetters.push($guessedLetter.val());
				if (isSame(player.correctLetters, secretWord.split(""))) {
					var $output = $('#wordString');
					$output.html('You win! The word is: ' + secretWord);
				}
			} else {
				console.log('wrong guess');
				var $output = $('#wordString');
				$output.html('Wrong guess...');
				player.guessesLeft--;
				game.updateDisplay();
			}
		} else {
			console.log('you lose');
			var $output = $('#wordString');
			$output.html('You lose! The word is: ' + secretWord);
		}
	},

	checkWin: function() {
	},

	checkLose: function() {
	}
}

var game = {

	resetGame: function() {
		console.log('reset pressed');
		player.guessesLeft = 10;
		word.setSecretWord();
		player.correctLetters = [];
		player.guessedLettersSoFar = [];
		game.updateDisplay();
		var $output = $('#wordString');
		$output.html('');
	},

	giveUp: function() {
		console.log('give up pressed');
		console.log(word.secretWord);
		var $output = $('#wordString');
		$output.html('The word is: ' + secretWord);
		//game.resetGame();
	},

	updateDisplay: function() {
		var $guessesElem = $('#guessesLeft');
		$guessesElem.html(player.guessesLeft);
		var $guessLetElem = $('#guessedLetters');
		$guessLetElem.html(player.guessedLettersSoFar + "");
	}
}

// Can't check array equality directly so use the below instead
function isSame(a1, a2){
    return !(a1.sort() > a2.sort() || a1.sort() < a2.sort());
}

$(document).ready(function() {
	// things to do when starting a new game
	word.setSecretWord();

	// Button listeners, when pressed will invoke the respective functions
	var $giveUpBtn = $('#giveUpButton');
	$giveUpBtn.on('click', game.giveUp);

	var $resetBtn = $('#resetButton');
	$resetBtn.on('click', game.resetGame);

	var $goBtn = $('#goButton');
	$goBtn.on('click', player.makeGuess);
});















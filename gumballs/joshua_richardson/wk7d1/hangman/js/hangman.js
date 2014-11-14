var $gamePlayArea = $('#gamePlayArea');
var $hangmanArea = $('#hangmanArea');
var $guessesLeft = $('#guessesLeft');
var $letterArea = $('#letterArea');
var $lettersUsed = $('#lettersUsed');
var $guessedLetters = $('#guessedLetters');
var $guessBox = $('#guessBox');
var $wordString = $('#wordString');
var $gameControlArea = $('#gameControlArea');
var $giveUpButton = $('#giveUpButton');
var $resetButton = $('#resetButton');

var word = {
 secretWord: '',

 wordlist: ['pudding', 'cake', 'fluff', 'shove'],

 setSecretWord: function() {
    word.secretWord = (_.sample(word.wordlist));
  },

  checkLetters: function(letterGuessed) {
    var letters = word.secretWord.split('');
    arrayLength = letters.length

    _.find(letters, function(i){
      if (i === letterGuessed) {


        // try _.difference
        // remove all occurances of a letter
        letters.splice(letters.indexOf(i),1);

        if (letters.length === 0) {
          console.log("won");
        }

      } else {
        console.log("working")
      }
    });

  },

  wordHidden: function () {
    for (i = 0; i=letters.length; i++) {
      placeholder = [];
      placeholder.push("_");
    }

  }

};

var player = {
  MAX_GUESSES: 8,

  guessedLetters: [],

  makeGuess: function() {
    // var $letterField = $('#letterField');

    var $letterField = $('#letterField').val();

    guess = $letterField;
    console.log(guess);
    player.guessedLetters.push(guess);
    word.checkLetters(guess);
  },

  checkWin: function() {
    result = word.checkLetters(guess);

    if (result >= 8) {
      console.log("winning");
    } else {
      console.log("losing");
    }
  },

  checkLose: function() {

  }
}

var game = {

  resetGame: function() {
    document.location.reload(true);
  },

  giveUp: function() {

  },

  updateDisplay: function() {

  }

}

$(document).ready(function() {

  // starts game
  // add click listeners to buttons

  word.setSecretWord();

  $("#letterField").keyup(function(){
    player.makeGuess();
  });


})
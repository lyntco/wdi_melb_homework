var word = {

  // secretWord: "",

  wordList: ['fish', 'dog', 'cow', 'cat'],

  // secretWordArray: [],

  setSecretWord: function() {

    this.secretWord = (_.shuffle(word.wordList))[0];
    // console.log(word.secretWord),
    this.secretWordArray = word.secretWord.split('');

    this.secretWordLength = this.secretWordArray.length

    // console.log(word.secretWordArray)

  },

  checkLetters: function() {
    $letter = $('#letterField').val();
    console.log($letter);
    console.log(jQuery.type($letter));

    if ($.inArray($letter, word.secretWordArray) >= 0) {

      console.log("correct");

      (player.correctLetters).push($letter);

      // $('#wordString').html()

    } else {
      console.log('no')
    };

    (player.guessedLetters).push($letter);
    // $letter.toArray(player.guessedLetters),

    console.log(player.guessedLetters);

    $('#letterField').val('')

    player.checkWin()
  },


};

var player = {

  MAX_GUESSES: 8,

  guessedLetters: [],
  correctLetters: [],

  makeGuess: function() {
    word.checkLetters();

    $('#guessedLetters').html(player.guessedLetters);
    $('#correctLetters').html("Correct Letters: " + player.correctLetters);
    $('#guessesLeft').html(game.guesses);

    game.guesses -= 1;

    if (game.guesses === 0) {
      game.resetGame()
    }

  },

  checkWin: function() {
    if ((_.difference(word.secretWordArray, player.correctLetters)).length===0) {

      $('#wordString').html("Last Correct Word: " + word.secretWord);

      game.resetGame()

    } else {
      $('#wordString').html("Last Correct Word: ")
    };
  },

};

var game = {

  guesses: player.MAX_GUESSES,

  resetGame: function() {

    $('#guessesLeft').html(game.guesses);

    this.guesses = player.MAX_GUESSES;
    word.setSecretWord();

    player.guessedLetters = [];
    player.correctLetters = [];

    $('#wordLength').html("Word Length: " + word.secretWordLength);

  },

  giveUp: function() {

    $('#wordString').html("Last Correct Word: " + word.secretWord)

    game.resetGame()

  },

}

$(document).ready(function() {
  game.resetGame();

  $("#letterField").on("keyup", player.makeGuess)

  var $giveUpButton = $('#giveUpButton');
  $giveUpButton.click(game.giveUp);

  var $resetButton = $('#resetButton');
  $resetButton.click(game.resetGame);
  // start a new game
  // add click listeners to buttons
});
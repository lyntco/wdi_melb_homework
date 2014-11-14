var word = {
  secretWord: "",

  wordArray: [],

  wordList:['pudding', 'cake', 'biscuit', 'chocolate', 'candy', 'toffee', 'lolly', 'pancake', ''],



  setSecretWord: function(){
    word.secretWord = word.wordList[_.random(0, (word.wordList.length-1))];
    word.wordArray = word.secretWord.split('');

  },

  checkLetters: function($guessedLetter, guessesLeft){

    _.each(word.wordArray, function(letter1, index){
      _.each(player.guessedLetters, function(letter2){
          if(letter1 === letter2){
            player.correctLetters[index] = letter1;
            console.log (player.correctLetters);

            // print correctly identified letters
            $("#correctLetters").html( "Correct letters: " + player.correctLetters);

            $guessedLetter.val('');
            // check if the guessed letters === secret word
            player.checkWin();
          } else if (guessesLeft === 0){
            $guessedLetter.val('');
            player.checkLose();
            } else {
              $guessedLetter.val('');
            }
        });
    });
  }
};

var player = {
  MAX_GUESSES: 8,

  guessedLetters: [],

  correctLetters: [],

  makeGuess: function(){

// only save $('#letterField') and not $('#letterField').val() so that we can clear $guessedLetter

    var guessesLeft = 7 - (player.guessedLetters.length);

    console.log('guessesLeft:' + guessesLeft);

    if (guessesLeft >= 0 ){

      // pull the current guessed letter from the screen
      var $guessedLetter = $('#letterField');

      // add the current guessed letter to an array
      player.guessedLetters.push($guessedLetter.val());

      // print the updated number of guesses left
      $("#guessesLeft").html(guessesLeft);

      console.log("guess array: ", player.guessedLetters);

      // print the current letters guessed
      $("#guessedLetters").html(player.guessedLetters);

      word.checkLetters($guessedLetter, guessesLeft);
    }
  },

  checkWin: function(){

    if (_.difference( word.wordArray, player.correctLetters ) == 0 ) {

        message = "Your a Champ, You Win!";
        color = 'green';
        game.updateDisplay(message, color);
    }
  },

  checkLose: function(){
    message = "So Sorry, You Lose";
    color = 'red';
    game.updateDisplay(message, color);
    game.giveUp();
  }
}

var game = {
  resetGame: function() {

    // set new secret word
    word.setSecretWord();
    // print out new secret word
    console.log('secret word:',word.secretWord);

    player.guessedLetters = [];
    player.correctLetters = [];
    $("#guessedLetters").html("");
    // initialise the guesses remaining to 8
    $("#guessesLeft").html("8");
    $('#letterField').html("");
    $("#wordLength").html("");
    $("#wordString").html("");
    $('#letterField').val("");
    $("#correctLetters").html("");

    // initialise the player array to contain underscores equal to the length of the secretWord Array
    for (var i=0; i< word.secretWord.length; i++){
        player.correctLetters[i] = "_";

        console.log('correct letter wordArray' + player.correctLetters)
    }
  },

  giveUp: function() {
    console.log('secret word:',word.secretWord);

    $("#wordString").html( "your word was: " + word.secretWord );

  },

  updateDisplay: function (message,color){

    wordLength.style.color = color;
    wordLength.style["font-size"] = '100px';
    $("#wordLength").html(message);
  }
}

$(document).ready(function() {
  // start a new game
  // click listeners to buttons
  game.resetGame();

  var $resetButton = $('#resetButton');
  $resetButton.click(game.resetGame);

  var $giveUpButton = $('#giveUpButton');
  $giveUpButton.click(game.giveUp);

  $('#letterField').keyup(player.makeGuess);

  $("#wordLength").html( "Word length: " + word.secretWord.length);
})



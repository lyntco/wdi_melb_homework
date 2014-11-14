var word = {

  secretWord: '',

  secretWordArray: [],

  displayArray: [],

  wordList: ['pudding', 'cake', 'biology', 'physics', 'laptop', 'beer', 'classroom', 'balloons'],

  setSecretWord: function() {
    this.secretWord = _.sample(this.wordList);
    this.secretWordArray = this.secretWord.split('');
    console.log(this.secretWordArray);
    this.displayArray = [];
    for(var i = 0; i < this.secretWord.length; i++ ) {
      this.displayArray.push('_')
    }
  },

  getAllIndexes: function(arr, val) {
    var indexes = [], i = -1;
    while ((i = arr.indexOf(val, i+1)) != -1){
        indexes.push(i);
    }
    return indexes;
  },

  checkLetters: function(letter) {
    var indexes = word.getAllIndexes(this.secretWordArray, letter);
    console.log(indexes)
    if (indexes.length > 1) {
      _.each( indexes, function(index) {
        word.displayArray[index] = letter;
      });
    } else if (indexes.length > 0) {
      this.displayArray[indexes] = letter;
    } else {
      player.wrongGuesses.push(letter)
      $guessesLeft = $guessesLeft - 1
    }
    $('#display-word').html(word.displayArray);

    // var $index = $.inArray(letter, this.secretWordArray)
  }

};

var player = {
  MAX_GUESSES: 8,

  guessedLetters: [],

  wrongGuesses: [],

  letter: '',

  makeGuess: function() {
    this.letter = $('#letterField').val();
    this.guessedLetters.push(this.letter);
    word.checkLetters(this.letter);
  },

  checkWin: function() {
    return !(_.contains(word.displayArray, '_'));
  },

  checkLose: function() {
    return (this.wrongGuesses.length - this.MAX_GUESSES === 0);
  }

}

var game = {

  init: function() {
    word.setSecretWord()
  $guessesLeft = player.MAX_GUESSES;
  $('#guessesLeft').html($guessesLeft);
  var $guessedletters = $('#guessedLetters');
  $displayWord = $('<p id="display-word">').html(word.displayArray);
  $('#wordString').html($displayWord);
  // var $word = $('#wordString');
  // var $displayWord = $('<p id="display-word">').html(word.displayArray);
  // $word.append($displayWord);
  },

  resetGame: function() {
    word.secretWord = [];
    word.secretWordArray = [];
    word.displayArray = [];
    player.guessedLetters = [];
    game.init()
  },

  giveUp: function() {
    $('#display-word').html('<h6>You gave up!</h6><p>' + word.secretWord + '</p>');
  },

  updateDisplay: function() {
    $(guessedLetters).html(player.guessedLetters);
    $('#guessesLeft').html($guessesLeft);
  }
}

$(document).ready(function() {
  //start a new game
  game.init()
    //add click listeners to buttons
  $('#letterField').on('keypress', function(e) {
    if (e.keyCode == 13) {
        player.makeGuess()
        game.updateDisplay()
        this.value = '';
        if (player.checkLose()) {
          $('#display-word').html('<h6>You lose!</h6><p>' + word.secretWord + '</p>');
        }
        if (player.checkWin()) {
          $('#display-word').html('<h6>Congratulatoins, you got it!</h6><p>' + word.secretWord + '</p>');
        }

        }
    })

  $('#resetButton').on('click', function() {
    game.resetGame()
    game.init()
    game.updateDisplay()
  })

  $('#giveUpButton').on('click', function() {
    game.giveUp()
  })
});



var game = {

  MAX_GUESSES: 8,

  guessedLetters: [],

  secret: [],

  puzzle: [],

  wordList: ['pudding', 'cake', 'hotdog', 'gumball'],

  init: function(){
    this.setSecret();
    this.setPuzzle();

  },

  guess: function(letter){
    this.guessedLetters.push(letter);

    // working out the puzzle
    _.each(this.secret, function(secretLetter, index){
        if (secretLetter === letter){
          game.puzzle[index] = letter;
        }
    })
  },

  reset: function(){
    this.secret = [];
    this.puzzle = [];
    this.guessedLetters = [];

  },

  setSecret: function() {
    this.secret = _.sample(this.wordList).split('');
  },

  setPuzzle: function(){
    this.puzzle = Array(this.secret.length+1).join('_').split('');
  },

  guessesLeft: function(){
    return this.MAX_GUESSES - this.guessedLetters.length;
  },

  checkWin: function(){
    return !(_.contains(this.puzzle, '_'));
  }

}

$(document).ready(function() {
  var $guessesLeft = $('#guessesLeft');
  var $guessesLetters = $('#guessedLetters');
  var $wordString = $('#wordString');

  var updateDisplay = function(){
      $guessesLeft.html(game.guessesLeft());
      $guessesLetters.html(game.guessedLetters);
      $wordString.html(game.puzzle);
  }

  $('#letterField').on('keyup', function(event) {

    // listen to enter key (13)
    if (event.which === 13) {
      game.guess(this.value);
      this.value = '';
      updateDisplay();
    }

  })

  $('#resetButton').on('click', function(){
    game.reset();
    game.init();
    updateDisplay();
  })

  game.init();
  updateDisplay();
  game.reset();

});
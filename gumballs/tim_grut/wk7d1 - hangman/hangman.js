var word = {


  secretWord: "",
  wordList: ['pudding', 'cake', 'pancake'],

  setSecretWord: function() {
    this.secretWord = _.sample(this.wordList)
  },
  checkLetters: function(letterAttempt) {
  this.secretWordArray = _.sort(_.uniq(_.toArray(this.secretWord)))
// if _.find(letterAttempt) === true


}
};

var player = {
  MAX_GUESSES: 8,

  guessedLetters: [],
correctLetters: [],
  makeGuess: function() {
    var $guess = $('#letterField').val();
    (player.guessedLetters).push($guess);
        this.checkWin();
    $('#letterField').val("");

    $('#guessedLetters').text(player.guessedLetters);
  },
  checkWin: function() {
    var $guess = $('#letterField').val();


    if (_.contains(word.secretWord, $guess) == true){
          (player.correctLetters).push($guess);
         $('#guessBox').append($guess);
}else{
        console.log($guess + "nope fool")

    }

if (_.difference(word.secretWordArray, player.correctLetters) == []) {
  alert("yay you win the word was" + word.secretWord)
  console.log('You Win')
  game.resetGame()
}

  },

  checkLose: function() {
    // if guesses.count is bigger than max =  lose
  }

}

var game = {

  resetGame: function() {
player.correctLetters = [];
    player.guessedLetters = [];
    word.setSecretWord();

  },
  giveUp: function() {
    guessedLetters = word.secretWord
  },
  updateDisplay: function() {

  }
}

$(document).ready(function(){

 window.guessesRLeft = (player.MAX_GUESSES - (player.guessedLetters.length));
    word.setSecretWord();

 $('#letterField').keyup(function() {
  player.makeGuess()
});


 var $lettersUsed = $('#lettersUsed');

// var $addTaskBtn = $('#add-task')
// $addTaskBtn.on('click', function() {}


});
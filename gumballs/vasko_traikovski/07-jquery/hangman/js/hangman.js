cc=function(a){console.log(a)}

var word = {
  secretWord:"",
  hangWord:"",
  wordList:['pudding','cake','biscuit','yoghurt',"fruit"],
  setSecretWord: function(){ //reset
    player.MAX_GUESSES=8
    player.MAX_GUESSES= 8,
    player.guessesLeft= 8,
    player.guessedLetters= []
    var list = word.wordList
    word.secretWord = list[ _.random( list.length-1) ];
    word.hangWord = word.secretWord.replace(/[a-zA-Z]/g, "_")
    cc( word.secretWord )
    game.updateDisplay()
  },

  hyphenize: function(wordss,guesses){
    var a=wordss.split("")
    var str=""
    for (var i = 0; i < a.length; i++) {
      if( _.contains(   guesses, a[i] ) )
        str = str + a[i]
      else
        str = str + "_"
    };
    return str
  },

  checkLetters: function(){//lettersUsed
    if(player.guessesLeft<=0){
      game.updateDisplay();
      return null
    }
    var guess = $("#letterField").val()
    $("#letterField").val("")
    player.guessedLetters.push(guess);
    player.guessesLeft -= 1;
    var has = _.contains( word.secretWord,  guess );
    if (has){ cc("has letter")  }
    game.updateDisplay()

  }//checkLetters
};//word

var player = {
  MAX_GUESSES: 8,
  guessesLeft: 8,
  guessedLetters: [],
  makeGuess: function() {
  },
  checkWin: function () {
  },
  checkLose: function () {
  }
}

var game = {
  resetGame: function() {
    $("#letterField").val("")
    word.setSecretWord()
    cc('secretWord: '+ word.secretWord)
  },
  giveUp: function(){
    $('#wordString').text( "Give Up!? The word is: "+word.secretWord );
  },
  updateDisplay: function() {
    var dashWord = word.hyphenize(word.secretWord,player.guessedLetters)
    if(player.guessesLeft<=0){
      dashWord="You Lose!"
      player.guessesLeft=0
    }
    if(dashWord===word.secretWord){
      dashWord="You Win!"
      player.guessesLeft=1000
    }
    $('#lettersUsed').text( "Letters Guessed Already: " + player.guessedLetters );
    $('#hangmanArea').text( "Guesses Left: " + player.guessesLeft );
    $('#wordString').text( dashWord );
  }

}

$(document).ready(function() {

  $('#hangmanArea').text( "Guesses Left: " + player.guessesLeft );
  $("#resetButton").click( game.resetGame );
  $("#giveUpButton").click( game.giveUp );
  game.resetGame()

$( "#letterField" ).keyup( word.checkLetters );

});



cc( _.difference("abcd",["a","b"]) )




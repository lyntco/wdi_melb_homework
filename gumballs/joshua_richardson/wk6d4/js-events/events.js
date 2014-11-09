var button = document.getElementById('lib-button');

var makeMadLib = function () {
  var nouns = document.getElementById('noun').value;
  var adjectives = document.getElementById('adjective').value;
  var persons = document.getElementById('person').value;

  var story = nouns;
  document.getElementById("story").innerHTML = story;

};

button.addEventListener('click', makeMadLib);

window.addEventListener('keypress', function(event) {

console.log(event + ' something is pressed');

  if (event.which == 13) {
    makeMadLib();
  };

});
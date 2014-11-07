var makeMadLib = function() {
		var noun = document.getElementById('noun').value;
		var adjective = document.getElementById('adjective').value;
		var person = document.getElementById('person').value;

		var story = person + ' really likes ' + adjective + ' ' + noun;
		console.log(story);
		
		var printStory = document.getElementById('story').innerHTML = 'STORY: ' + story;
		printStory;
	};



var submit = document.getElementById('lib-button');

submit.addEventListener( 'click', makeMadLib )

window.addEventListener( 'keypress', function(e) {
	if (e.which === 13) {
		makeMadLib();
	}
} );


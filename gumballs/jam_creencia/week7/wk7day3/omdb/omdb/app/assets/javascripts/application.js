// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require underscore


_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};


var searchMovie = function() {
	var $searchValue = $('#search-box').val();
		console.log($searchValue);
	// change to ?t
	// $.ajax('http://www.omdbapi.com/?s=' + $searchValue).done(function(data){
	// 	console.log(data);
	// 	var parsed = JSON.parse(data);
		// ok from above
		var showMovie = function(data) {
			// var templateStr = "<p>Title: {{ title }} Year: {{ year }}</p>";
			// var templateFunc = _.template(templateStr);
			// var htmlOutput = templateFunc({title: data.Title, year: data.Year});
			
			var templateFunc = _.template($('#movie-template').html());
			var htmlOutput = templateFunc({title: data.Title, year: data.Year});


			$('#output').append(htmlOutput);


		};


		var options = {
			url: 'http://www.omdbapi.com/?t=' + $searchValue,
			type: 'GET',
			dataType: 'json'
		};

		$.ajax(options).done(showMovie);

		// console.log(parsed.Search);

		// if (parsed.Search.length > 1) {
		// 	console.log('hello');
		// }

		// ok from below
		// $('#title').html(parsed.Title);
		// $('#year').html(parsed.Year); 
		// $('#plot').html(parsed.Plot); 
		// $('#director').html(parsed.Director);
		// $('#poster').attr('src', parsed.Poster); 
		// $('#output').html(data); 
	// });

};



$(document).ready(function() {
	console.log('doc ready');

	// use button
	$('#search-button').on('click', searchMovie);
	// use enter key
	$('#search-box').keypress(function(e) {
    if(e.which == 13) {
        searchMovie();
    }
});



});






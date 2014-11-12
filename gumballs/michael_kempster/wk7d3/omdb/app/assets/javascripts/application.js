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

$(document).ready(function() {
	// Follow the below steps:
	// Grab stuff on this page using jquery
	// Add an event listener to the button
	// Grab the value in the input box
	// Make an ajax request to omdb to search for the movie(s)
	// When the request is "done", put the movie details inside the paragraph(s)

	console.log('hello from the index html erb page');

	_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
	};

  var $button = $('#search-button');

  $button.on('click', function() {
   
    var $inputVal = $('#search-box').val();

    var showMovie = function(data) {
			// var templateStr = "<p> Title: {{ title }} Year: {{ year }}</p>";
			// var templateFunc = _.template(templateStr);
			// var htmlOutput = templateFunc( { title: data.Title, year: data.Year } );

			// The below line replaces the three lines above as the template has been placed into the index page
			var templateFunc = _.template($('#movie-template').html());
			// Iterate through all the movies in the object returned from the API and append them to the page
			for (var i = 0; i < data.Search.length; i++) {
				var htmlOutput = templateFunc( { title: data.Search[i].Title, year: data.Search[i].Year, imdbID: data.Search[i].imdbID } );
				$('#output').append(htmlOutput);
			}
			// The above lines utilise a template to make it easier to create the details of the data rather than doing the below line manually each time
      //$('#output').append('<p><h2>' + data.Title + '</h2>' + data.Year + ' ' + data.Plot + '</p>');
    }

		// Note the way that the below data has been encapsulated to make the $.ajax line easier to read
    var options = {
      url: 'http://www.omdbapi.com/?s=' + $inputVal, // Note ?s= has replaced ?t=
      type: 'GET',
      dataType: 'json'
    }
   
    $.ajax(options).done(showMovie);
  });
});



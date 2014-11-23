$(document).ready(function(){
	console.log('ready!');


	// var	myName;

	// var callback = function(data) {
	// 	console.log('got it');
	// 	myName = 'coolio';

	// 	$('#time').html(data.one)

	// };

	// $.getJSON('/hi.json', callback);

	// console.log('my name is: ' + myName);


	var timer = setInterval(function() {

		console.log('requesting time');

		$.ajax('/time.json').done(function(data) {

			var $stamp = $('<p>').html(data.now);

			$('body').append($stamp)
		});

	}, 2000);






	// $('#get-time').on('click', function() {

	// 	// $.getJSON('/time.json', function(data){
	// 		$.ajax('/time.json').done(function(data){

	// 		$('#time').html(data.now);

	// 	});

	// });


})

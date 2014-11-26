var dollars = 10.00;
var pounds = dollars * 0.63;

console.log('$' + dollars.toFixed(2) + ' is ' + pounds.toFixed(2));

var pounds = 10.00;
var dollars = pounds / 0.63;

console.log('$' + pounds.toFixed(2) + ' is ' + dollars.toFixed(2));

function dollarsToPounds(dollars) {
	var pounds = dollars * 0.63;
	console.log('$' + dollars.toFixed(2) + ' is ' + pounds.toFixed(2));
}

function poundsToDollars(pounds){
	var dollars = pounds / 0.63;
	console.log('$' + pounds.toFixed(2) + ' is ' + dollars.toFixed(2));
}


function tellFortune(numberOfChildren, partnerName, geographicLocation, jobTitle) {
	var numberOfChildren = numberOfChildren;
	var partnerName = partnerName;
	var	geographicLocation = geographicLocation;
	var	jobTitle = jobTitle;
	console.log('You will be a ' + jobTitle + ' in ' + geographicLocation + ' and married to ' + partnerName + ' with ' + numberOfChildren + ' children!');
}


tellFortune('2', 'Dom', 'Kew', 'Web Dev');




function calculateAge(birthYear, currentYear) {
	var age1 = currentYear - birthYear;
	var age2 = age1 - 1;

	console.log('You are either ' + age1 + ' or ' + age2 + ' years old.');
}

calculateAge(1988, 2014);



function calcCircumference(radius) {
	var circumference = (radius * 2) * Math.PI;
	console.log('The circumference is ' + circumference);
}

calcCircumference(5);



function calcArea(radius) {
	var area = Math.PI * (radius * radius)
	console.log('The area is ' + area);

}

calcArea(5);


function celsiusToFarenheit(celsius) {
	var farenheit = ((celsius * 9) / 5) + 32;

	console.log(celsius + 'C is ' + farenheit + 'F');
}

celsiusToFarenheit(32);


function farenheitToCelsius(farenheit) {
	var	celsius = ((farenheit - 32) * 5) / 9;
	console.log(farenheit + 'F is ' + celsius + 'C');

}

farenheitToCelsius(89.6)


function calculateSupply(age, amountPerDay) {
	var maxAge = 80;
	var supply = (amountPerDay * 365) * (maxAge - age)
	console.log('You will need ' + supply + ' kitkat bars to last you until the ripe old age of ' + maxAge + ' ('+ amountPerDay + ' kitkats per day)');
	
}

calculateSupply(26, 3)



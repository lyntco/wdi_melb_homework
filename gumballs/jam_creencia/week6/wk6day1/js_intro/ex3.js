function greaterNum(num1, num2) {
	if (num1 > num2) {
		console.log(num1);
	} else if (num2 > num1) {
		console.log(num2);
	} else {
		console.log('equal');
	};

}


greaterNum(5,9);
greaterNum(10,8);
greaterNum(2,2);


function helloWorld(languageCode) {
	var es = 'Ola!';
	var en = 'Hello!';
	var fil = 'Mabuhay!';

	if (languageCode == 'es') {
		console.log(es);
	} else if (languageCode == 'en') {
		console.log(en);
	} else {
		console.log(fil);
	}

}


helloWorld('es');
helloWorld('en');
helloWorld('fil');



function assignGrade(numScore) {
	if (numScore >= 90 && numScore < 100) {
		console.log('A');
	} else if (numScore >= 80 && numScore <90) {
		console.log('B');
	} else if (numScore >= 70 && numScore < 80) {
		console.log('C');
	} else if (numScore >= 60 && numScore < 70) {
		console.log('D');
	} else {
		console.log('F');
	}
};


assignGrade(92);
assignGrade(89);
assignGrade(51);



function pluralize(noun, number) {
	if (number > 1) {
		console.log(number + " " + noun + "s");
	} else {
		console.log(number + " " + noun);
	}
}


pluralize('cat', 5);
pluralize('bottle', 99);
pluralize('towel', 1);





















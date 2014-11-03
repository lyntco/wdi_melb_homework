num = 0;

while (num <= 20) {
 if (num % 2 == 0) {
 	console.log(num + ' is even');
 } else {
 	console.log(num + ' is odd');
 }
 num++
};






for (var x = 0; x <= 10; x++ ) {
	var timesNine = x * 9
	console.log( x + ' * 9 = ' + timesNine);
}



function assignGrade(numScore) {
	if (numScore >= 90 && numScore <= 100) {
		return 'A';
	} else if (numScore >= 80 && numScore <90) {
		return 'B';
	} else if (numScore >= 70 && numScore < 80) {
		return 'C';
	} else if (numScore >= 60 && numScore < 70) {
		return 'D';
	} else {
		return 'F';
	}
};



for (var num = 60; num <= 100; num++) {
	var grade = assignGrade(num);

	console.log('For ' + num + ', you got a grade of ' + grade );
}
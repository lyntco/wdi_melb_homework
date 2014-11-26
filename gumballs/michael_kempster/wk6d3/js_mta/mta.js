
function getTrip(startStation, stopStation) {
	var nLine = ['ts', '34th', '28th-n', '23rd-n', 'us']
	var lLine = ['8th', '6th', 'us', '3rd', '1st']
	var sixLine = ['gc', '33rd', '28th-s', '23rd-s', 'us']

	var startLine = nLine
	// var startStation = '34th'
	var stopLine = lLine
	// var stopStation = '8th'

	// startLine = document.getElementById('start-line').value
	// startStation = document.getElementById('start-station').value
	// stopLine = document.getElementById('stop-line').value
	// stopStation = document.getElementById('stop-station').value

	function getIndex(array, value) {
		for(var i = 0; i < array.length; i++) {
	    if (array[i] === value) return i;
	  }
	}

	function printOut(start, stop, line) {
		for(var i = start; i <= stop; i++) {
	    console.log(line[i]);
	  }
	}

	function printOutBack(start, stop, line) {
		for(var i = start; i >= stop; i--) {
	    console.log(line[i]);
	  }
	}

	if (startLine === stopLine) {
		var startIndex = getIndex(startLine, startStation);
		var stopIndex = getIndex(stopLine, stopStation);

		if (startIndex < stopIndex) {
			printOut(startIndex, stopIndex, startLine);
		} else {
			printOutBack(startIndex, stopIndex, startLine); // Need to reverse
		}

	} else {
		var startIndex = getIndex(startLine, startStation);
		var startTransIndex = getIndex(startLine, 'us');

		var stopTransIndex = getIndex(stopLine, 'us');
		var stopIndex = getIndex(stopLine, stopStation);

		if (startIndex < startTransIndex) {
			printOut(startIndex, startTransIndex, startLine);
		}	else {
			printOutBack(startIndex, startTransIndex, startLine); // Need to reverse
		}

		if (stopTransIndex < stopIndex) {
			stopTransIndex++;
			printOut(stopTransIndex, stopIndex, stopLine);
		} else {
			stopTransIndex--;
			printOutBack(stopTransIndex, stopIndex, stopLine); // Need to reverse
		}
	}
}








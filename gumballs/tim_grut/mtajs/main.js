function getTripin(startStop, endStop){

  var lines = {
    lineN: ['ts', '34th', '28th-n', '23rd-n', 'us'],
    lineL: ['8th', '6th', 'us', '3rd', '1st'],
    line6: ['gc', '33rd', '28th-s', '23rd-s', 'us']
  }


  // define start line
  startLine = lines.lineN;
  endLine = lines.lineN;


  var startingIndex = startLine.indexOf(startStop);
  var endingIndex = endLine.indexOf(endStop);

  if (startLine == endLine){

    var journey = startLine.slice(startingIndex, endingIndex + 1);

    if (startingIndex <= endingIndex){

    }
    else{
      journey = journey.reverse();
    }

  } else{
    var startlineTransfer = startLine.indexOf("transfer");
    var endlineTransfer = endLine.indexOf("transfer");

    if (startingIndex > startlineTransfer){
      var journeypt1 = startLine.slice(startlineTransfer, startingIndex + 1).reverse()
    }
    else{

      var journeypt1 = startLine.slice(startingIndex, startlineTransfer)

    } if (endingIndex <= endlineTransfer){
      journeypt2 = endLine.slice(endingIndex, endlineTransfer + 1).reverse()
    } else {
      journeypt2 = endLine.slice(endlineTransfer, endingIndex + 1)
    }


  journey = journeypt1.concat(journeypt2);

}
  return journey;

}

var button = document.getElementById('go');
button.addEventListener('click', function() {

var startStop = document.getElementById('start-station').value;
var endStop = document.getElementById('stop-station').value;
var trip = getTripin(startStop, endStop);

console.log(trip);

var output = document.getElementById('output');
output.innerHTML = trip;
});


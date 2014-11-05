document.getElementById("mtaButton").addEventListener("click", getTrip, false);

function getTrip() {

  var startStation = document.getElementById('start-station').value;
  var stopStation = document.getElementById('stop-station').value;

  // Define stops
  var lines = {
    lineN: ["n1","n2","n3","transfer","n4"],
    line6: ["61","62","63","transfer","64"],
    lineL: ["l1","l2","l3","transfer","l4"]
  };

  // Define on and off
  var lineOn = "lineN";
  var stopOn = startStation
  var lineOff = "lineL";
  var stopOff = stopStation;

  // Works out stop on and off index
  var stopOnIndex = lines[lineOn].indexOf(stopOn);
  var stopOffIndex = lines[lineOff].indexOf(stopOff);

  // Finds out where the 'transfer' station is on each line
  var lineNTransfer = lines["lineN"].indexOf("transfer");
  var line6Transfer = lines["line6"].indexOf("transfer");
  var lineLTransfer = lines["lineL"].indexOf("transfer");

  // Check if line on is the same as line off
  if (lineOn == lineOff) {

    if (stopOnIndex < stopOffIndex) {
      // slices between those indexes and puts it into the journey array
      var journey = lines[lineOn].slice(stopOnIndex, stopOffIndex + 1);

    // works out the journey backwards, then reverses it, because arrays need to be ascending
    } else {
      // slices between those indexes and puts it into the journey array
      var journey = lines[lineOn].slice(stopOffIndex,stopOnIndex + 1);

      // outputs the journey
      console.log(journey.reverse());
    }

  // Works out if they are not on the same line
  } else {

    // checks if the lineOn index is lower than the transfer line index
    if (stopOnIndex < lines[lineOn].indexOf("transfer")) {

      // Works out the first part of the journey (getting on to the transfer)
      var journeyP1 = lines[lineOn].slice(stopOnIndex, lines[lineOn].indexOf("transfer") + 1);

      // Checks if the stop you got off index is less than the transfer index
      if (stopOffIndex < lines[lineOff].indexOf("transfer")) {

        // Works out between the line off index and the trasfer index of that line, then reverses it so it's in the right direction
        var journeyP2 = lines[lineOff].slice(stopOffIndex, lines[lineOff].indexOf("transfer") + 1).reverse();

        // contatinates the journeys to get the journey, need to remove duplicates
        journeyDuplic = journeyP1.concat(journeyP2);

        // removes duplicates
        journey = journeyDuplic.filter(function(item, pos) {
          return journeyDuplic.indexOf(item) == pos;
        })

      // if stop you got off index is greater than the transfer index
      } else {


        // Works out between the line off index and the trasfer index of that line, then reverses it so it's in the right direction
        var journeyP2 = lines[lineOff].slice(lines[lineOff].indexOf("transfer"), stopOffIndex + 1).reverse();

        // contatinates the journeys to get the journey, need to remove duplicates
        journeyDuplic = journeyP1.concat(journeyP2);

        // removes duplicates
        journey = journeyDuplic.filter(function(item, pos) {
          return journeyDuplic.indexOf(item) == pos;
        })

      }

    // if the lineOn index is higher than the transfer line index
    } else {

     // Works out the first part of the journey (getting on to the transfer)
      var journeyP1 = lines[lineOn].slice(lines[lineOn].indexOf("transfer"), stopOnIndex + 1).reverse();

      // Checks if the stop you got off index is less than the transfer index
      if (stopOffIndex < lines[lineOff].indexOf("transfer")) {

        // Works out between the line off index and the trasfer index of that line, then reverses it so it's in the right direction
        var journeyP2 = lines[lineOff].slice(stopOffIndex, lines[lineOff].indexOf("transfer") + 1).reverse();

        // contatinates the journeys to get the journey, need to remove duplicates
        journeyDuplic = journeyP1.concat(journeyP2);

        // removes duplicates
        journey = journeyDuplic.filter(function(item, pos) {
          return journeyDuplic.indexOf(item) == pos;
        })

      // if stop you got off index is greater than the transfer index
      } else {


        // Works out between the line off index and the trasfer index of that line, then reverses it so it's in the right direction
        var journeyP2 = lines[lineOff].slice(lines[lineOff].indexOf("transfer"), stopOffIndex + 1);

        // contatinates the journeys to get the journey, need to remove duplicates
        journeyDuplic = journeyP1.concat(journeyP2);

        // removes duplicates
        journey = journeyDuplic.filter(function(item, pos) {
          return journeyDuplic.indexOf(item) == pos;
        })

      }

    }

    console.log(journey);
    document.getElementById("output").innerHTML = journey

  };

}; // end function getTrip


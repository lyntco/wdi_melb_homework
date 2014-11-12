function $id(id) {  return document.getElementById(id) }
function $tag(id) { return document.getElementsByTagName(id) }
function cc(a) {    console.log(a) }
var text = ('innerText' in document) ? 'innerText' : 'textContent';
// d[text] = 'New text';

$id("calc").addEventListener('click', tripit, false);


//  week6day3
//  document.getElementById('output').setAttribute('class', 'my-new-class');
function tripit() {

  console.clear()
  var line_N   = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
      line_L   = ["8th", "6th", "Union Square", "3rd", "1st"],
      line_6   = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
      lines    = {
                line_N: line_N,
                line_L: line_L,
                line_6: line_6
      },
      station0 = $id("start-station").value,
      station1 = $id("stop-station").value,
      el
      // line0    = "line_N",
      // line1    = "line_6"

      el = $id("start-line")
      var line0 = el.options[el.selectedIndex].value;

      el = $id("stop-line")
      var line1 = el.options[el.selectedIndex].value;

  for (line in lines)
    cc(lines[line])

  startLine    = lines[line0]
  startStation = startLine.indexOf(station0)
  cc("startStation: " + station0 + " of " + line0.replace("_", " "))

  stopLine     = lines[line1]
  stopStation  = stopLine.indexOf(station1)
  cc("stopStation: " + station1)

  var sameLine = (startLine === stopLine)
  if (sameLine) cc("same line")

  if (sameLine && (startStation > stopStation)) {
    trip = trip.splice(stopStation, startStation).reverse()
  } else if (sameLine && (startStation < stopStation)) {
    trip = trip.splice(startStation, stopStation).reverse()
  } else {
    trip1 = startLine.splice(startStation, startLine.indexOf("Union Square") - startStation + 1)
    trip2 = stopLine.splice(stopStation, stopLine.indexOf("Union Square") - stopStation).reverse()
    trip = trip1.concat(trip2)
  }
  // $id("output")[text]=trip
  $id("output").innerHTML = trip
  // console.log( trip )
} //tripit
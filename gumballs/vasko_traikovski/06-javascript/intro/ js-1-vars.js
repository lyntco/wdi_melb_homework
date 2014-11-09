cc = function(a){console.log(a)}




// The Fortune Teller
// Why pay a fortune teller when you can just program your fortune yourself?

// Store the following into variables: number of children, partner's name, geographic location, job title. Output your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."

 var numberOfChildren  = 3
 var partnersName      = "Jill"
 var geographicLocation= "Melbourne"
 var jobTitle          = "director"
cc( "You will be a "+
  jobTitle+
  " in "+geographicLocation+
  ", and married to "+
  partnersName+
  " with "+
  numberOfChildren+" kids." )



// The Age Calculator
// Forgot how old someone is? Calculate it!

// Store the current year in a variable.
// Store their birth year in a variable.
// Calculate their 2 possible ages based on the stored values.
// Output them to the screen like so: "They are either NN or NN", substituting the values.
var currentYear = 2014
var birthYear = 1900
var age = currentYear - birthYear
console.log("They are either "+age+" or "+(age-1) )





// The Lifetime Supply Calculator
// Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!











// Store your current age into a variable.
// Store a maximum age into a variable.
// Store an estimated amount per day (as a number).
// Calculate how many you would eat total for the rest of your life.
// Output the result to the screen like so: "You will need NN to last you until the ripe old age of X".
var age          = 40
var maxAge       = 100
var amountPerDay = 20
var days         = (maxAge - age)*365
var total        = amountPerDay*days
console.log("You will need "+total+" to last you until the ripe old age of "+maxAge+".")




// The Geometrizer
// Calculate properties of a circle, using the definitions at http://math2.org/math/geometry/circles.htm
// Store a radius into a variable.
// Calculate the circumference based on the radius, and output "The circumference is NN".
// Calculate the area based on the radius, and output "The area is NN".
var radius = 10
var π      = Math.PI
cc("The circumference is "+ 2*π*radius )
cc("The area is "+ π*radius*radius )




// The Temperature Converter
// It's hot out! Let's make a converter based on the steps at http://www.mathsisfun.com/temperature-conversion.html

// Store a celsius temperature into a variable.
// Convert it to fahrenheit and output "NN°C is NN°F".
// Now store a fahrenheit temperature into a variable.
// Convert it to celsius and output "NN°F is NN°C."

// °F to °C  Deduct 32, then multiply by 5, then divide by 9
// °C to °F  Multiply by 9, then divide by 5, then add 32


var celsius = 36
var fahrenheit = 212

cc(celsius+"°C is "+ (9/5*celsius+32)+"°F")
cc(fahrenheit+"°F is "+ ( (fahrenheit-32)*5/9 )+"°F")


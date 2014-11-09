cc = function(a){console.log(a)}
cc("----------")
cc("functions:")
cc("----------")

// The Fortune Teller

// Why pay a fortune teller when you can just program your fortune yourself?
// Write a function named tellFortune that:
// takes 4 arguments: number of children, partner's name, geographic location, job title.
// outputs your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
// Call that function 3 times with 3 different values for the arguments.
 var numberOfChildren  = 3
 var partnersName      = "Jill"
 var geographicLocation= "Melbourne"
 var jobTitle          = "director"
function tellFortune( numberOfChildren, partnersName, geographicLocation,jobTitle){
  cc( "You will be a "  + jobTitle            +
    " in "              + geographicLocation  +
    ", and married to " + partnersName        +
    " with "            + numberOfChildren    + " kids." )
}
tellFortune( numberOfChildren, partnersName, geographicLocation,jobTitle)




// The Age Calculator

// Forgot how old you are? Calculate it!
// Write a function named calculateAge that:
// takes 2 arguments: birth year, current year.
// calculates the 2 possible ages based on those years. outputs the result to the screen like so: "You are either NN or NN"
// Call the function three times with different sets of values.
// Bonus: Figure out how to get the current year in JavaScript instead of passing it in.
var currentYear = 2014
var birthYear = 1900
function tellAge(currentYear, birthYear){
  var age = currentYear - birthYear
  console.log("They are either "+age+" or "+(age-1) )
}
var thisYear = new Date().getFullYear()
tellAge(2014, 2000)
tellAge(thisYear, 2000)
tellAge(2013, 2000)

console.log("this year" +new Date().getFullYear() )


// The Lifetime Supply Calculator

// Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!
// Write a function named calculateSupply that:
// takes 2 arguments: age, amount per day.
// calculates the amount consumed for rest of the life (based on a constant max age). outputs the result to the screen like so: "You will need NN to last you until the ripe old age of X"
// Call that function three times, passing in different values each time.
// Bonus: Accept floating point values for amount per day, and round the result to a round number.

var age          = 40
var amountPerDay = 20

function calculateSupply( age, amountPerDay){
  var round = Math.round
  var maxAge       = 100
  var days         = (maxAge - age)*365
  var total        = amountPerDay*days
  console.log( "You will need "+ round(total)+
  " to last you until the ripe old age of "+ round(maxAge) )
}
calculateSupply( 12, 30)
calculateSupply( 22, 40)
calculateSupply( 32, 50)





// The Geometrizer


// Create 2 functions that calculate properties of a circle.

// Create a function called calcCircumfrence:

// Pass the radius to the function.
// Calculate the circumference based on the radius, and output "The circumference is NN".
// Create a function called calcArea:

// Pass the radius to the function.
// Calculate the area based on the radius, and output "The area is NN".
var radius = 10
function calcCircumference(radius){
  var π      = Math.PI
  cc("The circumference is " + 2*π*radius )
}
calcCircumference(110)
function calcArea(radius){
  var π      = Math.PI
  cc("The area is " + π*radius*radius )
}



// The Temperature Converter


// It's hot out! Let's make a converter based on the steps here.

// Create a function called celsiusToFahrenheit:

// Store a celsius temperature into a variable.
// Convert it to fahrenheit and output "NN°C is NN°F".
// Create a function called fahrenheitToCelsius:
// Now store a fahrenheit temperature into a variable.

// Convert it to celsius and output "NN°F is NN°C."
function celsiusToFahrenheit(celsius){
  cc(celsius+"°C is "+ (9/5*celsius+32)+"°F")
}
celsiusToFahrenheit(36)

function fahrenheitToCelsius(fahrenheit){
  cc(fahrenheit+"°F is "+ ( (fahrenheit-32)*5/9 )+"°F")
}
fahrenheitToCelsius(212)
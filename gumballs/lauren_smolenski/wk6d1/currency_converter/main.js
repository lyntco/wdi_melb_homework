// Currency Converter App
// Objectives:

// create and use variables
// create and use functions
// HTF

// Find the exchange rate between dollars and pounds
// Store the exchange rate in a variable
// Converting dollars to pounds:

// Store a dollar amount into a variable.
// Convert it to pounds and output "$NN is Â£NN".
// Converting pounds to dollars:

// Now store a pound amount into a variable.
// Convert it to dollar and output "Â£NN is $NN."
// Cleaning it up:

// Can you make sure the output is only 2 decimal places?
// Refactoring

// Can you refactor the code so that it uses functions? Write a function dollarsToPounds that takes a dollar number as input and outputs a string of what the pound equivalent is.
// Do the same for poundsToDollars

function dollarsToPounds(dollars) {
  var conversion = dollars / 1.82427
  var pounds = conversion.toFixed(2)
  console.log("AUD $" + dollars + ' is £' + pounds);
}

function poundsToDollars(pounds) {
  var conversion = pounds * 1.82427
  var dollars = conversion.toFixed(2)
  console.log("£" + pounds + ' is AUD $' + dollars);
}

dollarsToPounds(10)
poundsToDollars(10)
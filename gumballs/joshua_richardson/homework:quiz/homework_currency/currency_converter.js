// GBP to AUD functions
var dollarsToPounds = function(exchange) {

  var exchangeRate = 0.54;

  // Conversion
  var conversion = exchange * exchangeRate;

  // conversin output
  var result = "$" + exchange + " is " + "£" + conversion;

  return result;
}


// GBP to AUD function
var poundsToDollars = function(exchange) {

  var exchangeRate = 1.8336;

  // Conversion
  var conversion = exchange * exchangeRate;

  // conversin output
  var result = "£" + exchange + " is " + "$" + conversion;

  return result;
}

console.log(poundsToDollars(20))
console.log(dollarsToPounds(30))

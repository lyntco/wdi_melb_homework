// Convert A$ to GBP

var rateAudToGbp = 0.54698610655;

var aud = 1;

console.log("A$" + aud + " is £" + (aud * rateAudToGbp).toFixed(2));

// ==============================

// Convert GBP to AUD

var rateGbpToAud = 1.8282;

var gbp = 1;

console.log("£" + gbp + " is A$" + (gbp * rateGbpToAud).toFixed(2));

// ====================================================

function dollarsToPounds(dollar) {

  console.log("£" + (0.54698610655 * dollar).toFixed(2));

};

dollarsToPounds(10);

function poundsToDollars(pound) {

  console.log("$" + (1.8282 * pound).toFixed(2));

};

poundsToDollars(10);
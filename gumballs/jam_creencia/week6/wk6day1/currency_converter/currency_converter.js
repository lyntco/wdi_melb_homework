var audToGbp = 0.5475
var gbpToAud = 1.8265


function dollarsToPounds(aud) {
	console.log( aud + ' AUD is ' + (aud * audToGbp).toFixed(2) + ' GBP.');
}


function poundsToDollars(gbp) {
	console.log( gbp + ' GBP is ' + (gbp * gbpToAud).toFixed(2) + ' AUD.');
}

dollarsToPounds(5);
poundsToDollars(10);
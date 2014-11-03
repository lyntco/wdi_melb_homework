var topChoices = ['donuts', 'cupcakes', 'eclairs', 'brownies', 'cakes'];

var getSuffix = function(num) {
	var suffix = ['', 'st', 'nd', 'rd', 'th'];
		if (num > 3) {
			return 'th';
		} else {
			return suffix[num];
		}
	};


for (var i = 0; i < topChoices.length; i++) {

	console.log('my ' + ( i+1 ) + getSuffix(i+1) + ' choice for sweets is ' + topChoices[i]);
}
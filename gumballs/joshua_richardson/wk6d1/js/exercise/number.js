var greaterNum = function(num1,num2) {
  if(num1 > num2) {
    var output = "The greater number of " + num1 + " and " + num2 + " is " + num1;
    console.log(output);
} else {
    var output = "The greater number of " + num1 + " and " + num2 + " is " + num2;
    console.log(output);
  }
};

greaterNum(20,200);
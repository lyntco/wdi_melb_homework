
for (var i = 100; i > 1; i--) {
  if(i < 60) {
    var result = "For" + i + "you got a " + "D";
    console.log(result);
  }
  else if (i >= 60 && i <= 71) {
    var result = "For" + i + "you got a " + "C";
    console.log(result);
  }
  else if (i >= 70 && i <= 80) {
    var result = "For" + i + "you got a " + "B";
    console.log(result);
  }
  else {
    var result = "For" + i + "you got a " + "A";
    console.log(result);
  }
}
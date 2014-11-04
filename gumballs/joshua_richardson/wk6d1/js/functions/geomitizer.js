function calcCircumference(radius) {
  var circumference =  2 * (Math.PI * radius);
  var result = "The circumference is " + circumference;
  return result;
}

function calcArea(radius) {
  var area = (radius * radius * Math.PI);
  var result = "The area of the circle is " + (radius * radius * Math.PI);
  console.log(result);
}

console.log(calcArea(10));
console.log(calcCircumference(10));
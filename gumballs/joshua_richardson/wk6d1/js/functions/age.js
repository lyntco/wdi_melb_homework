function calculateAge(currentYear,birthYear) {
  var yearsOld = currentYear - birthYear
  var beforeYearsOld = yearsOld - 1
  var message = "They are either " + yearsOld + " or " + beforeYearsOld;
  console.log(message);
}

calculateAge(2014,1989);
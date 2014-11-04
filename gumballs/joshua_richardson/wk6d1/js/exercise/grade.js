var assignGrade = function(numScore) {
  if (numScore < 40) {
    return "F, your raaabbbbbish!"
  }
  else if (numScore >= 41 && numScore <= 50) {
    return "D"
  }
  else if (numScore >= 51 && numScore <= 60) {
    return "C"
  }
  else if (numScore >= 61 && numScore <= 70) {
    return "B"
  }
  else {
    return "A"
  }
};

assignGrade(70);
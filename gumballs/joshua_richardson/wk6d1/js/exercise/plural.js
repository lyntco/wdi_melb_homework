var pluralize = function(noun,number) {
  if (number > 1) {
    return number + " " + noun + "s";
  }
  else {
    return number + " " + noun;
  }
}

pluralize('dog',20)
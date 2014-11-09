
function cc(a){console.log(a)}
cc("---------")
cc("js if:")
cc("---------")
// Which number's bigger?
// Write a function named greaterNum that:

// takes 2 arguments, both numbers.
// returns whichever number is the greater (higher) number.
// Call that function 2 times with different number pairs, and log the output to make sure it works (e.g. "The greater number of 5 and 10 is 10.").
function greaterNum(a,b){
  var greater = (a>b)? a : b
  return greater
}
cc("The greater number of 5 and 10 is " +greaterNum(5,10)+".")
cc("The greater number of 50 and 10 is " +greaterNum(50,10)+".")
cc("The greater number of 5 and 100 is " +greaterNum(5,100)+".")



// The World Translator
// Write a function named helloWorld that:

// takes 1 argument, a language code (e.g. "es", "de", "en")
// returns "Hello, World" for the given language, for at least 3 languages. It should default to returning English.
// Call that function for each of the supported languages and log the result to make sure it works.
function helloWorld (language) {
  if      (language="es") cc("Hola")
  else if (language="de") cc("Hallo")
  else                    cc("Hello")
}

helloWorld ("es")
helloWorld ("de")
helloWorld ("en")



// The Grade Assigner
// Write a function named assignGrade that:

// takes 1 argument, a number score.
// returns a grade for the score, either "A", "B", "C", "D", or "F".
// Call that function for a few different scores and log the result to make sure it works.
function assignGrade(score){
  var grades  = [ "F","D","C","B","A" ]
  if (score === 100)
    return "A"
  return grades[ Math.floor(score/20) ]
}
cc( assignGrade( 9) )
cc( assignGrade(29) )
cc( assignGrade(49) )
cc( assignGrade(69) )
cc( assignGrade(89) )
cc( assignGrade(99) )
cc( Math.floor(100/20) )



// The Pluralizer
// Write a function named pluralize that:

// takes 2 arguments, a noun and a number.
// returns the number and pluralized form, like "5 cats" or "1 dog".
// Call that function for a few different scores and log the result to make sure it works.
// Bonus: Make it handle a few collective nouns like "sheep" and "geese".
function pluralize (number, noun) {

  if (number===1)
    return number + noun
  noun=noun + "s"
  if (noun=== "gooss" )noun ="geese"
  if (noun=== "sheeps") noun ="sheep"
  return number + " "+noun
}


cc(pluralize(5,"cat"))
cc(pluralize(1,"cat"))
cc(pluralize(2,"goose"))


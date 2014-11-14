var helloWorld = function(langCode) {
  if (langCode === "es") {
    console.log("Hola, Mundo");
  }
  else if (langCode === "de") {
    console.log("Hallo, Welt");
  }
  else {
    console.log("Hello, World");
  }
}

helloWorld("de")
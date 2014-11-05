var books = [
  {title: "Eragon",
   author: "Christopher.P",
   alreadyRead: true
},
  {title: "A Song of Fire and Ice",
   author: "A guy with a beard",
   alreadyRead: false
}
];

var booksLength = books.length;

for (var i = 0; i < booksLength; i++) {
  if (books[i].alreadyRead) {
    statement = "You already read " + books[i].title + " by " + books[i].author + "."
    console.log(statement)
  }
  else {
    statement = "You need to read " + books[i].title + " by " + books[i].author + "."
    console.log(statement)
  }

}

// Now use an if/else statement to change the output depending on whether you read it yet or not. If you read it, log a string like 'You already read "The Hobbit" by J.R.R. Tolkien', and if not, log a string like 'You still need to read "The Lord of the Rings" by J.R.R. Tolkien.'
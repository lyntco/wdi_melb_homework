var friedEggRecipe = {
	title: 'Fried Egg',
	servings: 1,
	ingredients: ['egg', 'oil', 'salt'],
};


var instantNoodleRecipe = {
	title: 'Instant Noodles',
	servings: 1,
	ingredients: ['instant noodles', 'hot water', 'seasoning'],
};


function displayRecipe(recipe) {
	console.log('Title: ' + recipe.title);
	console.log('Serves: ' + recipe.servings);
	console.log('Ingredients: ' + recipe.ingredients);
};

displayRecipe(friedEggRecipe);
displayRecipe(instantNoodleRecipe);




var books = [
	{
		title: 'Game of Thrones',
		author: 'George RR Martin',
		alreadyRead: false
	},

	{
		title: 'The Hobbit',
		author: 'JRR Tolkein',
		alreadyRead: true
	}
]


for (var i = 0; i < books.length; i++) {
	var book = books[i];
	if (book.alreadyRead == true) {
		console.log("You've already read " + book.title + " by " + book.author);
	}
	else {
		console.log("You've haven't read " + book.title + " by " + book.author + " yet.");
	}
}




var fury = {
	title: 'Fury',
	duration: '2 hours',
	stars: ['Brad Pitt', 'Shia LaBeouf']
}



function displayMovie(movie) {
	console.log(movie.title + ' goes for ' + movie.duration + ' starring ' + movie.stars.join(', '));

}


displayMovie(fury)










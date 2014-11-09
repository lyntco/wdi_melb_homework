var favMovie = {
  title: "Class",
  duration: 100,
  stars: ["JJ", "LL", "CC"]
};

var printMovie = function(movie) {
  console.log(movie.title);
  console.log("It stars " + movie.stars.join(', '));
}

printMovie(favMovie);
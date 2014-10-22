#Title: Cookbook App

###Summary
More practice with Rails and models. This app will get into more complex
ActiveRecord associations and using a variety of view helpers to DRY up code.


###Prerequisites:
- Ruby
- HTML/CSS
- Databases and Foreign Keys
- Sinatra or understanding of MVC

###Objectives:
- Tour of Rails by building an App from scratch.
- Rails MVC
- CRUD
- Multiple Models
- ActiveRecord
- View helpers: URL helper, Asset helper, Form helpers


###Specification:

Models

- A Book has a title, cuisine, chef, image
- An Ingredient has a name, measurement, cost, image
- A Recipe has a name, course, cooktime, servingsize, instructions, image,

Views

- The Index Page should have links to Books, Ingredients, and Recipes
- There should be links to "New Book", "New Ingredient", and "New Recipe"

Associations

- A Book has many recipes
- A Recipe belongs to a book

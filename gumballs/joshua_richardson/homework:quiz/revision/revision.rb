1.

  a. kitchen[:oven]

  b. kitchen[:drawer][1]

  c. kitchen[:drawer].push("fork")

2.

  attr_accessor creates a reader and writter method for your class. It is basically just a shortcut so you don't have to write as much.

3.  An object is an instance of a class.

    A class is a kind of blueprint to make an object. Telling it what it should be made of and the methods it should have.

4.

  class Student

    def initialize(name,age,favourite_subject="sleeping")
      @name = name
      @age = age
      @favourite_subject = favourite_subject
    end

  end

  s1 = Student.new("Josh", 24)

5.

  Both are http methods. GET requests data from a source, where as POST submits data to be proccessed.

6.

  params

7.

  In the URL

8.

  rails new appname -d=postgresql

9.

  show view and posts controller

10.

  In the rails console

11.

  In the rails console. User.find(1).destroy or just use the delete_all on the model

12.

  delete_all method

13.

  a. Singular with a capital i.e. User

  b. Plural with controller i.e. UsersController

  c. Plural i.e. users

14.

  .new is not yet saved, you need to .save at some point before it is in the database

  .create creates it there and then, with the parameters that are passed to it

15.

  rails g migration

    i.e. rails g migration add_category_id_to_products category_id:integer

    This adds a category_id column to the products table

16.

  // must sample

  var hat = {
    color: ["white","yellow","purple","red"]
  }

17.

  $('div') gets all the divs on the page

  $('<div>') creates a div

18.

  We used HTTParty to utilize the OMBPAPI API so that we could access the data provided. Which i believe parsed the data (JSON) in a Ruby object

19.



20.

  a. clicking on the body

  b. The body HTML



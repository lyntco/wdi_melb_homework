# 1. Given you have the hash
# ----------------------------------------------------------------------
kitchen = {
  :drawer => ['knife','spoon'],
  :stove => [],
  :sink => [],
  :oven => 'Turkey'
}
# a. How would you return what's inside the oven?
p kitchen[:oven]
# b. How would you take a spoon out of the drawer?
p kitchen[:drawer][1]
# c. How would you put a fork into the drawer?
p kitchen[:drawer] << 'fork'
# ----------------------------------------------------------------------


# 2. What does attr_accessor do?

# This adds scaffolding code to our class which enables 'get' and 'set' methods on a variable.

#   So instead of:

def KlassWhaterver
  def name # KlassWhatever method to return value of name attribute
    @name
  end
  def name=(str) # KlassWhatever method to set value of name attribute
    @name
  end
end

# we can do the much shorter:

def KlassWhaterver
  attr_accessor :name
end

# ----------------------------------------------------------------------


# 3. What's the difference between an object and a class?

# A class is a special type of object that contains methods as well as data.  An object in Ruby is usually just an encapsualisation of data e.g. ;
# ob ={   :drawer => ['knife','spoon'],
#         :stove => [],
# }

# ----------------------------------------------------------------------



# 4. Write a class Student that has the attributes name, age, favourite subject, and make a new student object from it. Make it so when you make a new student their favourite subject is sleeping if you don't pass in anything for their subject.

class Person

  def student(name,age,fav_subject = "sleeping")
    @name        = name
    @age         = age
    @fav_subject = fav_subject
  end

end

# ----------------------------------------------------------------------


# 5. What is the difference between a get and a post?

# A 'get' gets information from a page, a 'post' sends information

# ----------------------------------------------------------------------


# 6. What is the name of the hash that has user submitted data from a form?

# params is the hash that Ruby gets from the url

# ----------------------------------------------------------------------




# 7. How can you add things to this hash without form submission?

# ----------------------------------------------------------------------


# 8. What is the command to make a new rails app with postgres?
# rails new myapp --database=postgresql

# ----------------------------------------------------------------------


# 9. What view and controller would the route get '/posts/:id' => 'posts#show' use by default?

# ----------------------------------------------------------------------


# 10. How would you manually create a new user without a view, controller and action?

# ----------------------------------------------------------------------


# 11. How would you manually destroy the first user created?

# ----------------------------------------------------------------------


# 12. How would you manually destroy all the users?

# ----------------------------------------------------------------------


# 13. What are the rails naming conventions for


# a. a model

# b. a controller for this model

# c. the views for this model and controller

# ----------------------------------------------------------------------


# 14. What is the difference between User.new and User.create?

# ----------------------------------------------------------------------


# 15. What is the command to update the schema with new migrations?
# rake db:migrate
# ----------------------------------------------------------------------



# 16. Write the javascript version of this:

# class Hat
# attr_reader :color
# def initialize
#   @color = ["white","yellow","purple","red"].sample
# end
# end
p ["white","yellow","purple","red"].sample
# ----------------------------------------------------------------------


# 17. What's the difference between $('div') and $('<div>') ?


# ----------------------------------------------------------------------


# 18. How do you get the movie Jaws from OMBPAPI?


# ----------------------------------------------------------------------


# 19. Write the code to bring the title and the year out on the current page with ajax.

# 20. In this code:

# $('body').on('click', function(e){
# console.log(this)
# console.log(e)
# });
# a. What event triggers the console.logs?

# b. What will be logged to the console?
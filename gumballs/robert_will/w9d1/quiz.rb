# 1
  # kitchen = {
  #   :drawer => ['knife','spoon'],
  #   :stove => [],
  #   :sink => [],
  #   :oven => 'Turkey'
  # }

# a
  # kitchen[:oven]

# b
  # kitchen[:drawer].delete('spoon')

# c
  # kitchen[:drawer].push('fork')

# 2
  # attr_accessor allows you to read AND edit an attribute within a class in ruby

# 3
  # a class is like a blueprint that structures an object. An object is anything (including classes?) like methods or variables. Something that gets passed around and edited.

# 4
  # class Student
  #   def initialize(name, age, favourite_subject)
  #     @name = name
  #     @age = age
  #     @favourite_subject = 'sleeping'
  #   end
  # end
  # s1 = Student.new('Rob', 24, 'Programming')
  # p s1

# 5
  # post is used to save something to  web page whilst get just displays information

# 6
  # params

# 7

# 8
  # rails new -d=postgresql

# 9
  # Posts

# 10
  # add a user directly to the database by seeding data and migrating

# 11
  # u = User.first
  # u.destroy

# 12
  # User.destroy

# 13

# a
  # A model should be named in the singular, and with _ between words

# b
  # a controller should be named in the plural (model)s_contoller

# c
  # the views contain files like show.html.erb and edit.html.erb and are linked to methods in the associated controller. They are contained within a folder named after the controller/model in the plural as well.

# 14
  # the create method is where a new object is saved to the database where new is just used to display an empty object

# 15
  # rake db:migrate

# 16
  #

# 17
  # $('div') refers to all divs in the dom tree, $('<div>') creates a div not in the dom tree and may need to be appended to something.

# 18
  # HTTParty.get(http://www.omdbapi.com/?t=jaws&y=&plot=short&r=json)

# 19
  #

# 20
  # a .on('click'

  # b
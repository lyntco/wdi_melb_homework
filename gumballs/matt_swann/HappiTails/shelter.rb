class Shelter
  attr_accessor :name, :animals, :clients
  
  def initialize(name)
    @name = name
    @animals = {}
    @clients = {}
  end

  def to_s
    "#{@name} has #{@animals.count} animals and #{@clients.count} clients."
  end
end

#shelter.animals[name] = Animal.new(name, species, breed, age, gender, toy) 

# shelter.animals[name] << Animal.new("Millie", "Dog", "Black dog", 4, "F", "ball")
# shelter.animals[name] << Animal.new("Finn", "Dog", "Sheep Dog", 2, "M", "George")
# shelter.animals[name] << Animal.new("Daffy", "Duck", "Dinner", 5, "?", "Finn")
# shelter.animals[name] << Animal.new("Georg", "Cat", "Fluff Ball", 6, "F", "Mice")

# shelter.clients << Client.new("Livy Swann", 30, "F", "no", 2)
# shelter.clients << Client.new("Matt Swann", 36, "M", "no", 0)


#     name = name
#     @age = age
#     @gender = gender
#     @Children = children
#     @num_pets = num_pets
# 		
#     @name = name
#     @owner = nil
#     @species = species
#     @breed = breed
#     @age = age
#     @gender = gender
#     @favorite_toys = toy
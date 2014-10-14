

# millie = {
#   @name = "Millie",
#   @species = "Dog"
#   @breed = "Black Dog"
#   @age = 3
#   @gender = "F"
#   @favorite_toys = "ball"
# }


class Animal
  attr_accessor :name, :owner, :species, :breed, :age, :gender, :favorite_toys
 
  def initialize(name, species, breed, age, gender, toy)
    @name = name
    @owner = nil
    @species = species
    @breed = breed
    @age = age
    @gender = gender
    @favorite_toys = toy
  end

  def add_owner(owner_name)
    @owner = owner_name
  end

  def to_s
    puts "#{@name} is a #{@species}, breed: #{@breed}, is #{@age} and loves #{@toy}."
  end
end

#list
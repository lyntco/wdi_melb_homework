class Animal
  attr_accessor :name, :age, :gender, :species, :multiple_toys

  def initialize(animal_details)
    @name = animal_details[:name]
    @age = animal_details[:age]
    @gender = animal_details[:gender]
    @species = animal_details[:species]
    @multiple_toys = []
  end

  # Displays the animals names
  def to_s
    "#{@name}"
  end

end


# animal_details = {
#   name: "Peeekaaaaa",
#   age: 123,
#   gender: "Female",
#   species: "Pokemon",
# }

# pikachu = Animal.new(animal_details)

# p pikachu.name
# p pikachu.age
# p pikachu.gender
# p pikachu.species




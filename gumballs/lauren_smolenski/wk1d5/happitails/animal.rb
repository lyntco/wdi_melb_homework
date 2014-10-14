class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(animal_details)
    @name = animal_details[:name]
    @age = animal_details[:age]
    @gender = animal_details[:gender]
    @species = animal_details[:species]
    @toys = []
  end

  def to_s
    puts "#{@name} is a #{@species}."
  end

end


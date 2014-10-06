class Animal
	attr_accessor :name, :age, :gender, :species, :toys

	def initialize(animal_details)
		@name = animal_details[:name]
		@age = animal_details[:age]
		@gender = animal_details[:gender]
		@species = animal_details[:species]
		@toys = []
	end

	def to_strings
		puts "The name of the animal is: #{@name}"
		puts "The age of the animal is #{@age}"
		puts "The gender of the animal is: #{@ender}"
		puts "The species of the animal is: #{@species}"
		puts ""
	end

end
class Animal
	attr_accessor :name, :age, :gender, :species, :toys, :owner
	def initialize(animal_details)
		@name = animal_details[:name]
		@age = animal_details[:age]
		@gender = animal_details[:gender]
		@species = animal_details[:species]
		@owner = owner
		@toys = []

	end

	def to_s
		print "#{@name} is a #{@age} year old #{@gender} #{@species} owned by #{@owner}. Toys: #{@toys.join(", ")}."
	end

	def to_s_option
		print "#{@name}, the #{@age} year old #{@gender} #{@species}."
	end

end

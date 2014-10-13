class Client
	attr_accessor :name, :age, :num_children, :num_pets

	def initialize(client_details)
		@name = client_details[:name]
		@age = client_details[:age]
		@num_children = client_details[:num_children]
		@num_pets = client_details[:num_pets]
	end

	def remove_pet
			@num_pets -= 1
	end

	def add_pet
			@num_pets += 1
	end

	def to_strings
		puts "The name of the client is: #{@name}"
		puts "The age of the client is #{@age}"
		puts "The number of children of the client is: #{@num_children}"
		puts "The number of pets of the client is: #{@num_pets}"
		puts ""
	end

end		
class Client

	attr_accessor :name, :children, :age, :pets
	def initialize(client_details)
		@name = client_details[:name]
		@children = client_details[:children]
		@age = client_details[:age]
		@pets = []

	end

	def to_s
		print "#{@name} is #{@age} years old, has #{@children} children, and has #{@pets.count} pet(s)."
	end

	def to_s_pets
		print "#{@name} has #{@pets.count} pet(s)."
	end


end
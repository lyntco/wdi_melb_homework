class Building
	attr_accessor :address, :num_floors, :apartments, :has_doorman, :has_elevator

	def initialize(building_details)
		@address = building_details[:address]
		@num_floors = building_details[:num_floors]
		@apartments = []
		@has_doorman = building_details[:has_doorman]
		@has_elevator = building_details[:has_elevator]
	end

	def to_strings
		puts "The address of the building is: #{@address}"
		puts "The number of floors of the building is #{@num_floors}"
		puts "Does the building have a doorman: #{@has_doorman}"
		puts "Does the building have a elevator: #{@has_elevator}"
		puts ""
	end

end

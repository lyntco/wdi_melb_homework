#address
#number_floors
#apartments
#has_doorman
#has_elevator

class Building
attr_accessor :address, :number_floors, :apartments, :has_elevator, :has_doorman

	def initialize(building_details)
		@address = building_details [:address]
		@number_floors = building_details [:number_floors]
		@has_doorman = building_details [:has_doorman]
		@has_elevator = building_details [:has_elevator]
		@apartments = []
	end
end


# b1 = {
# 	:address => "123 Road",
# 	:has_doorman => false,
# 	:has_elevator => true,
# 	:number_floors => 99,
# }

# b1 = Building.new(b1_details)

# p b1.has_elevator

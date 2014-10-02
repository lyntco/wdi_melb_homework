class Building
	attr_accessor :address, :has_elevator, :apartments, :number_of_floors


	def initialize(building_details)
		@address = building_details[:address]
		@has_elevator = building_details[:has_elevator]
		@number_of_floors = building_details[:number_of_floors]
		@apartments = []
	end

end

def list_apartments
    @apartments.values.join(", ")
  end

  building_list = {}

# b1_details = {
#   :address => '30 Forrest St',
#   :has_elevator => false,
#   :number_of_floors => 3,
#   :apartments => []
# }

# b1 = Building.new(b1_details)
class Building
	attr_accessor :address, :has_elevator, :apartments, :number_of_floors


	def initialize(building_details)
		@address = building_details[:address]
		@has_elevator = building_details[:has_elevator]
		@number_of_floors = building_details[:number_of_floors]
		@apartments = []
	end



	def list_apartments
    @apartments.values.join(", ")
  end

 

 	def to_s
    puts "> #{@address} has #{@number_of_floors} floors and #{@apartments.count} apartments within."
  end



end


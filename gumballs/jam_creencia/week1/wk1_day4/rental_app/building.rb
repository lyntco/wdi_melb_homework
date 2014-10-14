class Building
	attr_accessor :address, :has_elevator, :has_gym, :has_pool, :apartments, :number_of_floors


	def initialize(building_details)
		@address = building_details[:address]
		@has_elevator = building_details[:has_elevator] || "no"
		@has_gym = building_details[:has_gym] || "no"
		@has_pool = building_details[:has_pool] || "no"
		@number_of_floors = building_details[:number_of_floors]
		@apartments = []
	end


 	def to_s
    print "> #{@address} has #{@number_of_floors} floors and #{@apartments.count} apartments within.\n  Facilities: elevator: #{has_elevator}, gym: #{@has_gym}, pool: #{@has_pool}\n"
  end



end


class Apartment
	attr_accessor :tenants, :room_number, :number_bedrooms, :number_bathrooms, :has_parking

	def initialize(apartment_details)
		@room_number = apartment_details[:room_number]
		@number_bedrooms = apartment_details[:number_bedrooms]
		@number_bathrooms = apartment_details[:number_bathrooms]
		@has_parking = apartment_details[:has_parking]
		@tenants = []
	end

end


def list_tenants
	@tenants.join(", ")
end


# apartment_details = {
#   :room_number => 3,
#   :number_bedrooms => 2,
#   :number_bathrooms => 1,
#   :has_parking => true,
#   :tenants => []
# }

# a1 = Apartment.new(apartment_details)


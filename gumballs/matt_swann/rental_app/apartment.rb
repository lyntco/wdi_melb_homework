# tenants
# room_num
# num_bedrooms
# num_bathrooms
# has_parking


class Apartment
attr_accessor :tenants, :room_number, :num_bedrooms, :num_bathrooms, :has_parking

	def initialize(apartment_details)
		@tenants = []
		@room_number = apartment_details [:room_number]
		@num_bedrooms = apartment_details [:num_bedrooms]
		@num_bathrooms= apartment_details [:num_bathrooms]
		@has_parking = apartment_details [:has_parking]
	end
end

# apartment_details = {
# 	:room_number => 707,
# 	:num_bedrooms => 2,
# 	:num_bathrooms => 1,
# 	:has_parking => trure
# # }

# a1 = apartment.new(apartment_details)

# p a1.num_bedrooms
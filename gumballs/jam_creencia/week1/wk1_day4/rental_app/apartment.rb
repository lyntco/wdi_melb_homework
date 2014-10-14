class Apartment
	attr_accessor :tenants, :room_number, :number_bedrooms, :number_bathrooms, :has_parking, :apt_at_bldg

	def initialize(apartment_details)
		@room_number = apartment_details[:room_number]
		@number_bedrooms = apartment_details[:number_bedrooms]
		@number_bathrooms = apartment_details[:number_bathrooms]
		@has_parking = apartment_details[:has_parking]
		@apt_at_bldg = apt_at_bldg
		@tenants = []
	end


def to_s
	print "> Unit #{@room_number}/#{apt_at_bldg} has #{@number_bedrooms} bedrooms, #{@number_bathrooms} bathrooms, #{has_parking} parking and #{@tenants.count} tenants"
end

 	
end


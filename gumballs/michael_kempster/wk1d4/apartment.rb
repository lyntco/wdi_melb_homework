class Apartment
	attr_accessor :tenants, :room_number, :num_bedrooms, :num_bathrooms, :has_parking

	def initialize(apartment_details)
		@tenants = []
		@room_number = apartment_details[:room_number]
		@num_bedrooms = apartment_details[:num_bedrooms]
		@num_bathrooms = apartment_details[:num_bathrooms]
		@has_parking = apartment_details[:has_parking]
	end

	def to_strings
		puts "The room number of the apartment is: #{@room_number}"
		puts "The number of bedrooms of the apartment is #{@num_bedrooms}"
		puts "The number of bathrooms of the apartment is: #{@num_bathrooms}"
		puts "Does the apartment have parking: #{@has_parking}"
		puts ""
	end

end

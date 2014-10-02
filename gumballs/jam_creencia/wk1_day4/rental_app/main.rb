require_relative "tenant"
require_relative "apartment"
require_relative "building"

#DEFINE STUFF

def menu
	puts "Welcome to Rental App!"


	puts " >>MENU<<
	[1] Add tenants 		[4] View tenants
	[2] Add apartment		[5] View apartments
	[3] Add building		[6] View buildings
			[7] Quit

	"

	puts "What would you like to do?"
	
end




#PROGRAM STARTS


menu

input = gets.chomp.to_i

while input !=7
	
	case input

	when 1 
		# puts "What is the tenant's name?"
		# tenant_name = gets.chomp

		# puts "What is the tenant's age?"
		# tenant_age = gets.chomp

		# puts "What is the tenant's gender?"
		# tenant_gender = gets.chomp

		# puts "What is the tenant's occupation?"
		# tenant_occupation = gets.chomp

			
		# tenant_details = {
		# 	:name => tenant_name,
		# 	:age => tenant_age,
		# 	:gender => tenant_gender,
		# 	:occupation => tenant_occupation
		# }

		# t = Tenant.new(tenant_details)

		# puts "--t:"
		# p t

		# def add_tenant(t, Apartment.tenants)
		# t.each {|key, value| Apartment.tenants[key] = value}
		# end

		# add_tenant(t, Apartment.tenants)

		p Apartment.tenants



	# when 2 
	# 	puts "What is the apartment's room number?"
	# 		apt_room_num = gets.chomp

	# 	puts "How many bedrooms are in the apartment?"
	# 		apt_bedrooms = gets.chomp

	# 	puts "How many bathrooms are in the apartment?"
	# 		apt_bathrooms = gets.chomp

	# 	puts "Does the apartment have parking? (true/false)"
	# 		apt_has_parking = gets.chomp


	# 	apartment_details = {
	# 		:room_number => apt_room_num, 
	# 		:number_bedrooms => apt_bedrooms, 
	# 		:number_bathrooms => apt_bathrooms, 
	# 		:has_parking => apt_has_parking,
	# 		:tenants => []

	# 	}

	# 	a = Apartment.new(apartment_details)

	# 	p a





		# when 3
			
		# 	puts "What is the building address?"
		# 	bldg_address = gets.chomp

		# 	puts "How many floors are in the building?"
		# 	bldg_floors = gets.chomp

		# 	puts "Does the building have an elevator? (true/false)"
		# 	bldg_has_elevator = gets.chomp

		# 	building_details = {
		# 		:address => bldg_address, 
		# 		:has_elevator => bldg_has_elevator, 
		# 		:number_of_floors => bldg_floors,
		# 		:apartments => []
		# 	}


		# 	b = Building.new(building_details)

		# 	building_list = {}

		# 	def add_building(b, building_list)
		# 		b.each {|key, value| building_list[key] = value}
		# 	end

		# 	add_building(b, building_list)

		






		break

		


	end		


end






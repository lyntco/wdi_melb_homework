require_relative "tenant"
require_relative "apartment"
require_relative "building"

require "pry"


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


#PRE EXISTING DATA


	t1_details = {
		:name => "Jam",
		:age => 26,
		:gender => "female",
		:occupation => "nurse"
		}

	t1 = Tenant.new(t1_details)

	# p t1

	tenant_list = []

	tenant_list << t1

		# p tenant_list


 	a1_details = {
			:room_number => 33, 
			:number_bedrooms => 2, 
			:number_bathrooms => 1, 
			:has_parking => true,
			:tenants => [t1]

		}

	a1 = Apartment.new(a1_details)

	# p a1

	apartment_list = []

	apartment_list << a1
		# p apartment_list


	b1_details = {
	  :address => '485 St Kilda Rd',
	  :has_elevator => false,
	  :number_of_floors => 3,
	  :apartments => [a1]
	}

	b1 = Building.new(b1_details)

	# p b1

	building_list = []

	building_list << b1

	

	# p building_list


	def show_apartments(apartment_list, to_s)
		apartment_list.each {|a| a.to_s}
	end

def counter
	count = 0
end


binding.pry

#PROGRAM STARTS


menu

input = gets.chomp.to_i

while input !=7
	
	case input

		when 1 
			puts "What is the tenant's name?"
			tenant_name = gets.chomp

			puts "What is the tenant's age?"
			tenant_age = gets.chomp

			puts "What is the tenant's gender?"
			tenant_gender = gets.chomp

			puts "What is the tenant's occupation?"
			tenant_occupation = gets.chomp

				
			tenant_details = {
				:name => tenant_name,
				:age => tenant_age,
				:gender => tenant_gender,
				:occupation => tenant_occupation
			}

			t = Tenant.new(tenant_details)

			# puts "--t:"
			# p t


			puts "Would you like to add the tenant to an apartment? (y/n)"
			ans_add_to_apt = gets.chomp

			if ans_add_to_apt == "y"
				puts "available apartments:\n"
				show_apartments(apartment_list, to_s)

				puts "please select the unit (index):\n"
				apt_choice = gets.chomp.to_i
	
				apartment_list[apt_choice].tenants << t
		
				puts "Added #{t.name} to unit #{apartment_list[apt_choice].room_number}.\n\n"

			else
				puts "Added tenant.\n\n"

			

			end

			menu
			input = gets.chomp	

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

		# when 4 
		# 	puts "Tenant list:"
		# 	tenant_list.each {|t| 
		# 		puts t.to_s
		# 	}


			# when 5
			
			# 	puts "Apartment list:"
			# 	show_apartments(apartment_list, to_s)


		# when 6
		# 	puts "Building list:"
		# 		building_list.each {|b| 
		# 			puts b.to_s
		# 		}



				




		break

		


	end		




end

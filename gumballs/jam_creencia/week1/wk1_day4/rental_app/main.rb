require_relative "tenant"
require_relative "apartment"
require_relative "building"

require "pry"


#DEFINE STUFF

def menu
	puts "\n		      Welcome to Rental App!"


	puts " 			   >>MENU<<
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


	tenant_list = []

	tenant_list << t1

 	a1_details = {
		:room_number => 33, 
		:number_bedrooms => 2, 
		:number_bathrooms => 1, 
		:has_parking => 1,
		:tenants => []

	}

	a1 = Apartment.new(a1_details)

	apartment_list = []

	apartment_list << a1


	b1_details = {
	  :address => '485 St Kilda Rd',
	  :has_elevator => false,
	  :number_of_floors => 3
	}

	b1 = Building.new(b1_details)


	building_list = []

	building_list << b1

	a1.apt_at_bldg = b1.address

	b1.apartments << a1

	a1.tenants << t1

	t1.lives_at_apt = a1.room_number












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

			tenant_list << t


			puts "Would you like to add the tenant to an apartment? (y/n)"
			ans_add_to_apt = gets.chomp.downcase

			if ans_add_to_apt == "y"
				puts "Available apartments:\n"
				apartment_list.each_with_index { |a, index| puts "#{a.to_s} ---> press[#{index}]" }
				

				puts "Please select the unit:\n"
				apt_choice = gets.chomp.to_i
	
				apartment_list[apt_choice].tenants << t

				t.lives_at_apt = apartment_list[apt_choice].room_number
		
				puts "Added #{t.name} to unit #{apartment_list[apt_choice].room_number}.\n\n"

			else
				puts "Added #{t.name}.\n\n"

			end

			menu
			input = gets.chomp.to_i	

	when 2 
		puts "What is the apartment's room number?"
			apt_room_num = gets.chomp

		puts "How many bedrooms are in the apartment?"
			apt_bedrooms = gets.chomp

		puts "How many bathrooms are in the apartment?"
			apt_bathrooms = gets.chomp

		puts "How many parking spots in the apartment?"
			apt_parking = gets.chomp


		apartment_details = {
			:room_number => apt_room_num, 
			:number_bedrooms => apt_bedrooms, 
			:number_bathrooms => apt_bathrooms, 
			:has_parking => apt_parking,
			:tenants => []

		}

		a = Apartment.new(apartment_details)

		apartment_list << a

		puts "Add apartment to a building? (y/n)"
		ans_add_to_bldg = gets.chomp.downcase

			if ans_add_to_bldg == "y"
				puts "Available buildings:\n"
				building_list.each_with_index { |b,index| puts "#{b.to_s} ---> press[#{index}]" }
				
				puts "Please select the building:\n"
				bldg_choice = gets.chomp.to_i
	
				building_list[bldg_choice].apartments << t

				a.apt_at_bldg = building_list[bldg_choice].address
		
				puts "Added unit #{a.room_number} to building #{building_list[bldg_choice].address}.\n\n"

				
			else
				puts "Added unit #{a.room_number}.\n\n"

			end

	
		menu
			input = gets.chomp.to_i



		when 3
			
			puts "What is the building address?"
			bldg_address = gets.chomp

			puts "How many floors are in the building?"
			bldg_floors = gets.chomp

			puts "Does the building have an elevator? (yes/no)"
			bldg_has_elevator = gets.chomp.downcase

			puts "Does the building have a gym? (yes/no)"
			bldg_has_gym = gets.chomp.downcase
		
			puts "Does the building have a pool? (yes/no)"
			bldg_has_pool = gets.chomp.downcase
		

			building_details = {
				:address => bldg_address, 
				:has_elevator => bldg_has_elevator,
				:has_gym => bldg_has_gym, 
				:has_pool => bldg_has_pool, 
				:number_of_floors => bldg_floors,
				:apartments => []
			}


			b = Building.new(building_details)


			building_list << b

			puts "Building #{b.address} added."


			menu
			input = gets.chomp.to_i

		when 4 
			puts "Tenant list:"
			tenant_list.each {|t| puts "#{t.to_s}"}
			puts "\n"
			menu
			input = gets.chomp.to_i


		when 5
			
			puts "Apartment list:"
			apartment_list.each {|a| puts "#{a.to_s}"}
			puts "\n"
			menu
			input = gets.chomp.to_i

		when 6
			puts "Building list:"
			building_list.each {|b| puts "#{b.to_s}"}
			puts "\n"
			menu
			input = gets.chomp.to_i

				
		when 7
				break


	end		


end

# Add Tenant
# Add Building
# Add Apartment
# List Tenant
# list Building
# list apartment

# Ask user what thy want to do?
# if add tenant then ask the following 
# 	name
# 	age
# 	gender
# 	occupation
# 	is_funny

# add them to the an apartment y or n
# if yes then use << to push

require 'pry'
require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

building = Building.new("rental")


def menu
	puts 'clear'
	puts "Choose from the following options: Data (L)ists, (A)partments, (T)enants or (Q)uit. "
	gets.chomp.downcase
end

input = menu

while input != 'q'

	case input 

	when 'l'
		print 'Choose: (B)uilding List or (A)partment.'
		reply =gets.chomp.downcase

		if reply == "b"
			puts # buildings to _s
			gets
			menu
		else reply == 'a'
			puts # apartments to_s
			gets
			menu
		end

	when 't'
		puts "You are in the Building & Apartment Menu."
		print "Choose New (B)uilding of (A)partment"
		b_or_a_choice = gets.chomp.downcase

		while b_or_a_choice != 'q'
			case b_or_a_choice

		when 'a'
			print "Room number? "
			room_number = gets.chomp.to_i
			print "Number of bedrooms? "
			num_bedrooms = gets.chomp.to_i
			print "Number of bathrooms? "
			num_bathrooms = gets.chomp.to_i
			print "Does build have parking?"
			has_parking = gets.chomp.capitalize

		when 'b'
			print "Address: "
			address = gets.chomp.capitalize
			print "Number of floors? "
			number_floors = gets.chomp.to_i

:address, :number_floors, :apartments, :has_elevator, :has_doorman

	when 't'
		print "Name: "
		name = gets.chomp.capitalize
		print "Age: "
		age = gets.chomp.capitalize
		print "Occupation: "
		occupation = gets.chomp.capitalize
		print "Gender (m/f): "
		gender = gets.chomp.capitalize
		print "Are they funny? "
		funny = gets.chomp.capitalize
		building.tenant[name] = Tenant.new(name, age, occupation, gender, is_funny)
		puts "Tenant entry created"
	
# 	when 'o'
#      puts "These are the animals that up for adoption: "
#      puts shelter.animals.keys
#      print "What's the name of the animal being adopted? "
#      animal_name_out = gets.chomp
#      print "What's the name of the new owner? "
#      new_owner = gets.chomp.capitalize
#      shelter.animals[animal_name_out].add_owner(new_owner)
#      puts "Animal adopted"
#    end
#      print "Animal (i)n, (o)ut or (q)uit "
#      adopt_choice = gets.chomp.downcase
#     end
	# end


				




# while input != "7"

	if input == "3"
		puts "What's the tenants name: "
		name = gets.chomp
		puts "What's the tenants age: "
		age = gets.chomp
		puts "What's their gender: "
		gender = gets.chomp
		puts "What's their occupation: "
		occupation =gets.chomp
		puts "Are they funny: "
		funny = gets.chomp
	end

	new_tenant = {
			:name => name,
			:age => age,
			:gender => gender,
			:occupation => occupation,
			:is_funny => funny
	}

	all_tenants = []
	all_tenants << Tenant.new(new_tenant)

	if input == "2"
		puts "Enter number of room: "
		rooms = gets.chomp
		puts "Enter number of bedrooms: "
		bed = gets.chomp
		puts "Enter number of bathrooms: "
		bath = gets.chomp
		puts "Does is have parking: "
		parking =gets.chomp
	end

	new_apartments = {
		:room_number => rooms,
		:num_bedrooms => bed,
		:num_bathrooms => bath,
		:has_parking => parking
	}

	all_apartments = []
	all_apartments << Apartment.new(new_apartments) 

	if input == "1"
		puts "What's the address: "
		address = gets.chomp
		puts "How many floors are there: "
		floors = gets.chomp
		puts "Is there an elevator: "
		elevator = gets.chomp
		puts "Is there a doorman: "
		doorman =gets.chomp
	end

	new_building = {
		:address => address,
		:number_floors => floors,
		:has_doorman => doorman,
		:has_elevator => elevator
	}

	all_locations = []
	all_locations << Building.new(new_building)

	if input == "7"
		exit(0)
	end
#end

menu



binding.pry










# require 'pry'
# require_relative 'tenant'
# require_relative 'apartment'

# jenny_details = {
# 	:name => "Jenny",
# 	:age => "89",
# 	:gender => "Male",
# 	:occupation => "works on the block",
# 	:is_funny => false
# }

# jenny = Tenant.new(jenny_details)

# binding.pry
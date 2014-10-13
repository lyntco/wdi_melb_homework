=begin
For the assignment do the following:
------------------------------------
Hve a menu system like the calculator
Add a tenant
Add an apartment
Add a building
List all tenants
List all apartments
List all buildings
=end

# Include the necessary class files
require_relative 'tenant.rb'
require_relative 'apartment.rb'
require_relative 'building.rb'

# Introductory menu for operator's information
def intro
	puts "Welcome to the Building Manager!"
	puts ""
	puts "Following are the possible operation commands:"
	puts "1) Add a new building"
	puts "2) Add a new apartment"
	puts "3) Add a new tenant"
	puts "4) List all the buildings"
	puts "5) List all the apartments in the buliding"
	puts "6) List all the tenants in the building"
	puts "0) Exit the program"
	puts ""
end

def get_command(str)
	puts str
	return gets.chomp
end

command_str = "Please enter a number for the relevant command:"
command_invalid = "Sorry, you need to enter a valid command, please try again."

# Arrays to store all buildings, etc. note that ideally the apartments will be in the buildings and the
# tenants in turn will be in the apartments but this is not implemented here yet
buildings = []
apartments = []
tenants = []

# Data structures to house user input until it can be added to new object instances
building_details = {
	:address => "",
	:num_floors => 0,
	:has_doorman => false,
	:has_elevator => false
}

apartment_details = {
	:room_number => 0,
	:num_bedrooms => 0,
	:num_bathrooms => 0,
	:has_parking => true
}

tenant_details = {
	:name => "",
	:age => 0,
	:gender => "",
	:occupation => "",
	:is_funny => false
}

def get_building(building_details)
	puts "Adding a building."
	puts "Please add the address of the building:"
	building_details[:address] = gets.chomp.to_s
	puts "Please add the number of floors of the building:"
	building_details[:num_floors] = gets.chomp.to_i
	puts "Does the building have a doorman (y/n)?"		# Convert the last two to booleans
	building_details[:has_doorman] = gets.chomp == "y" ? true : false
	puts "Does the building have an elevator (y/n)?"
	building_details[:has_elevator] = gets.chomp == "y" ? true : false
	print "Thank you. "
	return building_details
end

def get_apartment(apartment_details)
	puts "Adding an apartment."
	puts "Please add the room number of the apartment:"
	apartment_details[:room_number] = gets.chomp.to_i
	puts "Please add the number of bedrooms of the apartment:"
	apartment_details[:num_bedrooms] = gets.chomp.to_i
	puts "Please enter the number of bathrooms of the apartment:"
	apartment_details[:num_bathrooms] = gets.chomp.to_i
	puts "Does the apartment have any parking assigned to it (y/n)?"
	apartment_details[:has_parking] = gets.chomp == "y" ? true : false
	print "Thank you. "
	return apartment_details
end

def get_tenant(tenant_details)
	puts "Adding a tenant."
	puts "Please add the name of the tenant:"
	tenant_details[:name] = gets.chomp
	puts "Please add the age of the tenant:"
	tenant_details[:age] = gets.chomp.to_i
	puts "Please enter the gender of the tenant:"
	tenant_details[:gender] = gets.chomp
	puts "Please enter the occupation of the tenant:"
	tenant_details[:occupation] = gets.chomp
	puts "Is the tenant funny (y/n)?"
	tenant_details[:is_funny] = gets.chomp == "y" ? true : false
	print "Thank you. "
	return tenant_details
end

####################################################################################

intro
command = get_command(command_str)

while command != "0"
	case command
	when "1"
		# Prompt the user for input
		building_details = get_building(building_details)
		# Create the new building instance here and store it in the array
		b = Building.new(building_details)
		buildings.push b
		command = get_command(command_str)
	when "2"
		# Prompt the user for input
		apartment_details = get_apartment(apartment_details)
		# Create the new apartment instance here and store it in the array
		a = Apartment.new(apartment_details)
		apartments.push a
		command = get_command(command_str)
	when "3"
		# Prompt the user for input
		tenant_details = get_tenant(tenant_details)
		# Create the new tenant instance here and store it in the array
		t = Tenant.new(tenant_details)
		tenants.push t
		command = get_command(command_str)
	when "4"
		# Print the contents of each building object
		puts "List of buildings..."
		puts ""
		buildings.each { |building| building.to_strings }
		command = get_command(command_str)
	when "5"
		# Print the contents of each apartment object
		puts "List of apartments..."
		puts ""
		apartments.each { |apartment| apartment.to_strings }
		command = get_command(command_str)
	when "6"
		# Print the contents of each tenant object
		puts "List of tenants..."
		puts ""
		tenants.each { |tenant| tenant.to_strings }
		command = get_command(command_str)
	else
		puts command_invalid
		command = get_command(command_str)
	end
end

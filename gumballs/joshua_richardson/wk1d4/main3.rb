# require 'pry'
require_relative 'Tenant'
require_relative 'apartment'
require_relative 'building'

def seperator
  puts "---------------------------------"
end

seperator
puts "Hello and welcome to yours truly.... the rental app"
seperator

# Gets main menu
puts "What would you like to do?"
seperator
puts "1) Add Tenants"
puts "2) Add Apartment"
puts "3) Add Building"
seperator
puts "4) List Tenants"
puts "5) List Apartments"
puts "6) List Buildings"
seperator
menu_choice = gets.chomp.to_s

# Stores building hashes
$current_buildings = []

# creates an empty hash to be over-written later
add_buildings = {
  address: "",
  has_doorman: true,
  has_elevator: true,
  number_of_floors: 0
}

# creates a new building class from the hash
add_buildings = Building.new(add_buildings)

case menu_choice
  when "1"
    add_tenant
  when "2"
    add_apartment
  when "3"
    puts "Great, please enter the address of the building you would like to add: "
    add_buildings.address = gets.chomp

    puts "Now enter the number of floors the building has: "
    add_buildings.number_of_floors = gets.chomp

    puts "Does the building have a doorman? (Y,N)"
    doorman_ans = gets.chomp.downcase
      if doorman_ans == "yes" || doorman_ans == "y"
        add_buildings.has_doorman = true
      else
        add_buildings.has_elevator = false
      end
    puts "Does the building have an elevator? (Y,N)"
    elevator_ans = gets.chomp.downcase
      if elevator_ans == "yes" || elevator_ans == "y"
        add_buildings.has_elevator = true
      else
        add_buildings.has_elevator = false
      end

    # Pushes the new building to the current_buildings array
    $current_buildings << add_buildings
  when "4"
    list_tenants
  when "5"
    list_apartments
  when "6"
end


$current_buildings.each {|x| puts x.has_elevator}

# menu to add tenant: name, age, etc


# jenny_details = {
#   name: "Jenny",
#   age: 89,
#   gender: "Male",
#   occupation: "Works on the block",
#   is_funny: false
# }

# jenny = Tenant.new(jenny_details)

# p jenny.name

# apartment_details = {
#   room_number: 707,
#   number_bedrooms: 2,
#   number_bathrooms: 2,
#   has_parking: true,
#   tenants: []
# }

# a1 = Apartment.new(apartment_details)

# Pushes an object, named 'jenny' of the tenant class into the array
# a1.tenants << jenny

# p a1.tenants


# binding.pry
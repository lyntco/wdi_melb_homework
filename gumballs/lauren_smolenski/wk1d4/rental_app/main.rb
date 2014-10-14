require 'pry'

require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

$current_buidings = []

b1_details = {
  :address => '123 Fake street',
  :has_doorman => false,
  :has_elevator => false,
  :number_of_floors => 999
}

apartment_details = {
  :room_number => 707,
  :number_bedrooms => 1,
  :number_bathrooms => 20,
  :has_parking => true,
}

jenny_details = {
  :name => "Jenny",
  :age => 89,
  :gender => "Male",
  :occupation => "Works on the block",
  :is_funny => false,
}

b1 = Building.new(b1_details)
a1 = Apartment.new(apartment_details)
jenny = Tenant.new(jenny_details)

$current_buidings << b1
b1.apartments << a1
a1.tenants << jenny

def list_buildings
  $current_buidings.each do |building|
    puts building.address
  end
end

def list_apartments
  $current_buidings.each do |building|
    building.apartments.each do |apartment|
      puts apartment.room_number
    end
  end
end

def list_tenants
  $current_buidings.each do |building|
    building.apartments.each do |apartment|
      apartment.tenants.each do |tenant|
        puts tenant.name
      end
    end
  end
end

def menu
  puts "What would you like to do? (Select an option by typing it's number)

  1) Add Tenant
  2) Add Apartment
  3) Add Building
  4) List Tenants
  5) List Apartments
  6) List Buildings
  7) Exit Rental App"

  print "Option: "
  $option = gets.chomp.to_i
end

def add_building
  puts "What address is the building at?"
  print "Street number: "
  street_number = gets.chomp.to_s
  print "Street name: "
  street_name = gets.chomp.capitalize
  address = street_number + " " + street_name
  match_address = $current_buidings.find { |building| building.address == address}
  if match_address && match_address.address == address
    puts "#{address} already exists in our database as a building address."
  else
    puts "We do not have this address in our database, please enter the details of the building below."
    print "Does the building have a doorman? (yes/no)"
    has_doorman = gets.chomp
    print "Does the building have an elevator? (yes/no)"
    has_elevator = gets.chomp
    print "How many floors does the building have?"
    number_of_floors = gets.chomp

    new_buildings_details = {
      :address => address,
      :has_doorman => has_doorman,
      :has_elevator => has_elevator,
      :number_of_floors => number_of_floors
    }

    $current_buidings << Building.new(new_buildings_details)
    puts "Your building at #{address} has been added to our database."
  end
end

def add_apartment
  puts "What address is the building of the appartment at?"
  print "Street number: "
  street_number = gets.chomp.to_s
  print "Street name: "
  street_name = gets.chomp.capitalize
  address = street_number + " " + street_name
  match_address = $current_buidings.find { |building| building.address == address}
  if match_address && match_address.address == address
    puts "#{address} exists in our database as a building address. Please press enter to continue and add the apartment."
    gets.chomp
  else
    puts "We do not have this address in our database, please press enter to return to the main menu and add the building before you add the apartment."
    gets.chomp
    menu
  end

  puts "Please enter your apartment details."
  print "apartment number: "
  room_number = gets.chomp.to_i
  match_room_number = match_address.apartments.find { |apartment| apartment.room_number == room_number}
  if match_room_number && match_room_number.room_number == room_number
    puts "Apartment number #{room_number} already exists for this building. Please press enter to return to the main menu."
    gets.chomp
    menu
  else
    print "number of bedrooms: "
    number_bedrooms = gets.chomp
    print "number of bathrooms: "
    number_bathrooms = gets.chomp
    print "Does the apartment have a parking space? (yes/no) "
    has_parking = gets.chomp
    if has_parking == "yes"
      has_parking = true
    else
      has_parking = false
    end
  end

  new_apartment_details = {
  :room_number => room_number,
  :number_bedrooms => number_bedrooms,
  :number_bathrooms => number_bathrooms,
  :has_parking => true,
  }

  match_address.apartments << Apartment.new(new_apartment_details)
  puts "Your apartment #{room_number} has been added to this building."
end

def add_tenant
  puts "What address does the tenant live at?"
  print "Street number: "
  street_number = gets.chomp.to_s
  print "Street name: "
  street_name = gets.chomp.capitalize
  address = street_number + " " + street_name
  match_address = $current_buidings.find { |building| building.address == address}
  if match_address && match_address.address == address
    puts "#{address} exists in our database as a building address. Please press enter to continue."
    gets.chomp
  else
    puts "We do not have this address in our database, please add the details of the building and the tenants apartment to our database before you add the tenant. Press enter to return to the main menu."
    gets.chomp
    menu
  end

  puts "Which unit number does the tenant live in?"
  print "apartment number: "
  room_number = gets.chomp.to_i
  match_room_number = match_address.apartments.find { |apartment| apartment.room_number == room_number}
  if match_room_number && match_room_number.room_number == room_number
    puts "Apartment number #{room_number} exists for this building. Please press enter to add your tenant."
    gets.chomp
  else
    puts "We don't have that unit in our database for this address. Please add the unit to the building before you add a tenant for this apartment. Press enter to return to the main menu."
    gets.chomp
    menu
  end

  puts "Enter the tenant's details. below"
  print "name: "
  name = gets.chomp.capitalize
  print "age: "
  age = gets.chomp.to_i
  print "gender (m/f): "
  gender = gets.chomp.downcase
  print "occupation: "
  occupation = gets.chomp
  print "Is #{name} funny? "
  is_funny = gets.chomp

  new_tenant_details = {
    :name => name,
    :age => age,
    :gender => gender,
    :occupation => occupation,
    :is_funny => is_funny,
  }

   match_room_number.tenants << Tenant.new(new_tenant_details)
end

puts "Welcome to Rental App!"
menu

until $option == 7 do

  case $option
  when 1
    add_tenant
    puts "Press enter to return to the main menu."
    gets.chomp
    menu
  when 2
  puts "Before you add an apartment, we need to check that the building the appartment is in exists in our database. Press enter to continue."
  gets.chomp
    add_apartment
    puts "Press enter to return to the main menu."
    gets.chomp
    menu
  when 3
    add_building
    puts "Press enter to return to the main menu."
    gets.chomp
    menu
  when 4
    list_tenants
    puts "Press enter to continue"
    gets.chomp
    menu
  when 5
    list_apartments
    puts "Press enter to continue"
    gets.chomp
    menu
  when 6
    list_buildings
    puts "Press enter to continue"
    gets.chomp
    menu
  end
end
puts "You have quit Rental App. Goodbye!"
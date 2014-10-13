require 'pry'
require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

$b_array = []
$a_array = []
$t_array = []

jenny_details = {
  :age => 89,
  :name => "jenny",
  :occupation => "Works on the block",
  :gender => "Male",
}

jenny = Tenant.new(jenny_details)
$t_array.push(jenny)



apartment_details = {
  :tenants => ["Bob"],
  :room_number => 89,
  :number_bedrooms => 1,
  :number_bathrooms => 20,
  :has_parking => true
}

a1 = Apartment.new(apartment_details)
$a_array.push(a1)



b1_details = {
  :address => "123",
  :has_doorman => "no",
  :has_elevator => "no",
  :number_of_floors => 999
}

b1 = Building.new(b1_details)
$b_array.push(b1)


puts "WELCOME TO FIND-A-BOX - Select a number option from below"
puts "1. List Buildings"
puts "2. List Apartments"
puts "3. List Tenants"
puts "4. Add Buildings"
puts "5. Add Apartments"
puts "6. Add Tenants"
puts "7. Exit"
input = gets.chomp

until input == "7"


  if input == "1"
    puts " "
    $b_array.each do |building|
      puts "Building address: #{building.address}"
      puts "Doorman? :#{building.has_doorman}"
      puts "Elevator?: #{building.has_elevator}"
      puts "Number of Floors: #{building.number_of_floors}"
      puts "Apartments in Building that are in the system: #{building.apartments}"
      puts " "
    end
  end

  if input == "2"
    puts " "
    $a_array.each do |apartment|
      puts "Apartment #: #{apartment.room_number}"
      puts "Number of bedrooms: #{apartment.number_bedrooms}"
      puts "Number of bathrooms: #{apartment.number_bathrooms}"
      puts "Parking: #{apartment.has_parking}"
      puts "Tenant names: #{apartment.tenants}"
      puts " "
    end
  end

  if input == "3"
    puts " "
    $t_array.each do |tenant|
      puts "Tenant name: #{tenant.name}"
      puts "Tenant age: #{tenant.age}"
      puts "Tenant gender: #{tenant.gender}"
      puts "Tenant occupation: #{tenant.occupation}"
      puts " "
    end
  end


  if input == "4"
    puts "What is the address?"
    addy = gets.chomp
    puts "Does it have a doorman?"
    doorman = gets.chomp
    puts "Does it have an elevator?"
    elevator = gets.chomp
    puts "How many floors?"
    floors = gets.chomp.to_i

    b1_details = {
     :address => addy,
     :has_elevator => elevator,
     :has_doorman => doorman,
     :number_of_floors => floors
    }

    b1 = Building.new(b1_details)

    $b_array << (b1)

    $b_array.each do |building|
      puts " "
      puts "Building address: #{building.address}"
      puts "Doorman? :#{building.has_doorman}"
      puts "Elevator?: #{building.has_elevator}"
      puts "Number of Floors: #{building.number_of_floors}"
      puts "Apartments in Building that are in the system: #{building.apartments}"
      puts " "
    end
  end

  if input == "5"
    puts "What is the room number?: "
    room_no = gets.chomp.to_i
    puts "What is the number of bedrooms?: "
    berooms = gets.chomp.to_i
    puts "What is the number of bathrooms?: "
    barooms = gets.chomp.to_i
    puts "Does it have parking?: "
    parking = gets.chomp
    puts "Current tenant name?: "
    tenant = gets.chomp

    a1_details = {
     :room_number => room_no,
     :number_bedrooms => berooms,
     :number_bathrooms => barooms,
     :has_parking => parking,
     :tenants => tenant
    }

    a1 = Apartment.new(a1_details)

    $a_array << (a1)

    $a_array.each do |apartment|
      puts " "
      puts "Apartment #: #{apartment.room_number}"
      puts "Number of bedrooms: #{apartment.number_bedrooms}"
      puts "Number of bathrooms: #{apartment.number_bathrooms}"
      puts "Parking: #{apartment.has_parking}"
      puts "Tenant names: #{apartment.tenants}"
      puts " "
    end

    puts "Add apartment to an building?"
    add = gets.chomp.downcase
    if add == "yes"
      puts "Choose a building: "
      $b_array.each do |building|
        puts "Building address #{building.address}"
      end
      puts "Enter the building address you want: "
      building_want = gets.chomp
      #$b_array.find{ |building| building.address == building_want }.apartments << (a1.room_number)
      selected_building = $b_array.find{ |building| building.address == building_want }
      selected_building.apartments << (a1.room_number)
    end
  end

  if input == "6"
    puts "What is the name?: "
    name = gets.chomp
    puts "What is the age?: "
    age = gets.chomp.to_i
    puts "What is the gender?: "
    gender = gets.chomp
    puts "What is the tenant's occupation?: "
    occupation = gets.chomp

    t1_details = {
     :name => name,
     :age => age,
     :gender => gender,
     :occupation => occupation
    }

    t1 = Tenant.new(t1_details)

    $t_array << (t1)

    $t_array.each do |tenant|
      puts " "
      puts "Tenant name: #{tenant.name}"
      puts "Tenant age: #{tenant.age}"
      puts "Tenant gender: #{tenant.gender}"
      puts "Tenant occupation: #{tenant.occupation}"
      puts " "
    end

    puts "Add Tenant to an apartment?"
    add = gets.chomp.downcase
    if add == "yes"
      puts "Choose an apartment: "
      $a_array.each do |apartment|
        puts "Apartment number #{apartment.room_number}"
      end
      puts "Enter the apartment number you want: "
      apartment_want = gets.chomp.to_i
      $a_array.find{ |apartment| apartment.room_number == apartment_want }.tenants << (t1.name)
    end
  end

  if input == "7"
  end

  puts "WELCOME TO FIND-A-BOX - Select a number option from below"
  puts "1. List Buildings"
  puts "2. List Apartments"
  puts "3. List Tenants"
  puts "4. Add Buildings"
  puts "5. Add Apartments"
  puts "6. Add Tenants"
  puts "7. Exit"
  input = gets.chomp

end
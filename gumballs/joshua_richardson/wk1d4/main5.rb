require 'pry'
require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

def seperator
  puts "---------------------------------"
end

seperator
puts "Hello and welcome to yours truly.... the rental app"
seperator

# Stores building hashes
$current_buildings = []

# creates seed data to be overwritten later
b1_details = {
  address: "123 Fake st",
  has_doorman: true,
  has_elevator: true,
  number_of_floors: 199
}

a1_details = {
  room_number: 707,
  number_bedrooms: 2,
  number_bathrooms: 0,
  has_parking: true,
  tenants: []
}

t1_details = {
  name: "Ste R",
  age: 24,
  gender: "Male",
  occupation: "Student",
  is_funny: "yes"
}


# creates a new building/tenant/apartmente
b1 = Building.new(b1_details)
a1 = Apartment.new(a1_details)
t1 = Tenant.new(t1_details)

# pushes seed data into the arrays
$current_buildings << b1
b1.apartments << a1
a1.tenants << t1


# Defines methods to list buildings
def list_buildings
  seperator; seperator
  puts "Current buildings: "
  seperator; seperator
  $current_buildings.each { |building|
        number = 1
        print number
        print ") "
        puts building
        number += 1
  }
  seperator
end

def list_apartments
  seperator; seperator
  puts "Current apartments in this building: "
  seperator; seperator
  $current_buildings.each { |building|
    building.apartments.each { |apartment|
        number = 1
        print number
        print ") "
        puts "Room #{apartment}"
        number += 1
    }
  }
  seperator
end

def list_tenants
  seperator; seperator
  puts "Current tenants in this building: "
  seperator; seperator
  $current_buildings.each { |building|
    building.apartments.each { |apartment|
      apartment.tenants.each { |tenants|
        number = 1
        print number
        print ") "
        puts tenants
        number += 1
      }
    }
  }
  seperator
end

# binding.pry


exit_menu = false

until exit_menu

  # main menu
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
  puts "7) Exit program"
  seperator
  menu_choice = gets.chomp.to_s
  case menu_choice
    when "1"
      add_tenant
    when "2"
      if $current_buildings.empty?
        puts "Sorry it seems there are no buildings for you to add an apartment to."
      else
        puts "Which building would you like to add the apartment to?"
        $current_buildings.each{|name, number|
                number = 1
                print number
                print ") "
                puts name
                number += 1
              }

        seperator

        add_to_building = gets.chomp
      #   if add_to_building ==


      end
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
      seperator
      puts "Great the building at #{add_buildings.address} has been added."
      seperator
    when "4"
      list_tenants
    when "5"
      list_apartments
    when "6"
      list_buildings
    when "7"
      exit(0)
  end
end

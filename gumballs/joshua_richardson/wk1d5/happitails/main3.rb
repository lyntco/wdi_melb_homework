require "pry"

require_relative 'client'
require_relative 'shelter'
require_relative 'animal'

def seperator
  puts "------------------------------------------------------"
end

# seed data
a1_details = {
  name: "Peeekaaaaa",
  age: 123,
  gender: "Female",
  species: "Pokemon",
}

a2_details = {
  name: "Marowak",
  age: 13,
  gender: "Male",
  species: "Pokemon",
}

c1_details = {
  name: "Laura Mossman",
  num_of_children: 10,
  age: 36
}

s1_details = {
  name: "Doggie Smalls"
}

# Creates a new client, shelter & animal from the hashes
a1 = Animal.new(a1_details)
a2 = Animal.new(a2_details)
c1 = Client.new(c1_details)
s1 = Shelter.new(s1_details)

# pushes seed data into the array
# shelter << s1
s1.animals << a1
s1.clients << c1
s1.animals << a2


## method definitions ##

# exit method
def exit
  seperator
  puts "Exiting program....."
  seperator
  return
end

# Add Animal
def add_animal
  # defines a tempory placeholder for the animal to be added
  animal_temp = {
  name: "temp",
  age: 123,
  gender: "Female",
  species: "Pokemon",
  }

  # Overwrites the current data in the hash
  puts "Please enter the name of the animal you wish to add: "
  animal_temp[:name] = gets.chomp
  puts "Now please enter the age of the animal: "
  animal_temp[:age] = gets.chomp.to_i
  puts "Now please enter the gender of the animal: "
  animal_temp[:gender] = gets.chomp
  puts "Now please enter the species you wish to add: "
  animal_temp[:species] = gets.chomp

  # istantiates the hash as a new animal object
  a3 = Animal.new(animal_temp)

  # returns the hash
  return a3
end

def add_client
  # defines a tempory placeholder for the client to be added
  client_temp = {
  name: "Laura Mossman",
  num_of_children: 10,
  age: 36
}

  # Overwrites the current data in the hash
  puts "Please enter the name of the client you wish to add: "
  client_temp[:name] = gets.chomp
  puts "Now please enter number of children the client has: "
  client_temp[:num_of_children] = gets.chomp.to_i
  puts "Now please enter the clients age: "
  client_temp[:age] = gets.chomp.to_i

  # istantiates the hash as a new animal object
  c3 = Client.new(client_temp)

  # returns the hash
  return c3

end

def add_adoption
  puts "Which client would like to make an adoption? "

end

def main_menu
  seperator
  puts "Please select from one of the following options: "
  seperator
  puts "Please select one of the following options: "
  puts "1) Display all animals"
  puts "2) Display all clients"
  puts "3) Add an animal to the database"
  puts "4) Add a client to the database"
  puts "5) Add an adoption"
  puts "6) Exit"
end

def all_clients(s1)
  puts "The clients in the current database are: "
  seperator
  puts s1.clients.each {|name| name.to_s }
  seperator
  main_menu
  gets.chomp
end

def animal_names(s1)
  # displays animal names
  seperator
  puts "The animals in the current database are: "
  seperator
  puts s1.animals.each {|name| name.to_s }
  seperator
  main_menu
  menu_selection = gets.chomp
end

main_menu
menu_selection = gets.chomp.downcase

until menu_selection == "6"
  case menu_selection
    when "1"
      menu_selection = animal_names(s1)
    when "2"
      menu_selection = all_clients(s1)
    when "3"
      # calls the add_animal method and stores the return in a variable
      adding_animal = add_animal
      seperator
      puts "The animal #{adding_animal.name} has been added to the database."
      seperator
      # pushes the temprary data to be stored more permanently in the array
      s1.animals << adding_animal
      main_menu
      menu_selection = gets.chomp
    when "4"
      # calls the add_client method and stores the return in a variable
      adding_client = add_client
      seperator
      puts "The client #{adding_client.name} has been added to the database."
      seperator
      # pushes the temprary data to be stored more permanently in the array
      s1.clients << adding_client
      main_menu
      menu_selection = gets.chomp
    when "5"
      add_adoption
  end
end


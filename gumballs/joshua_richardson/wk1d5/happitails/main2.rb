require "pry"

require_relative 'client'
require_relative 'shelter'
require_relative 'animal'

def seperator
  puts "------------------------------------------------------"
end


# empty array to store all the data
# shelter = []

# hashes to use as placeholders
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

###### Main Menu ######

def main_menu
  seperator
  puts "Hello and welcome to the Slice 'n Dice Aninal Shelter, where spelling and grama is of no importance to us?"
  seperator
  puts "Please select one of the following options: "
  puts "1) Display all animals"
  puts "2) Display all clients"
  puts "3) Add an animal to the database"
  puts "4) Add a client to the database"
  puts "5) Add an adoption"
  puts "6) Exit"
end

main_menu
menu_selection = gets.chomp.downcase

until menu_selection == "6"
  case menu_selection
    when "1"
      # displays animal names
      seperator
      puts "The animals in the current database are: "
      seperator
      puts s1.animals.each {|name| name.to_s }
      seperator
      main_menu
      menu_selection = gets.chomp
    when "2"
      puts "The clients in the current database are: "
      seperator
      puts s1.clients.each {|name| name.to_s }
      seperator
      main_menu
      menu_selection = gets.chomp
    when "3"
      add_animal
    when "4"
      add_client
    when "5"
      add_adoption
  end
end
# pry.binding






# At start, the user is prompted with a menu of options:
# display all animals
# display all clients
# create an animal
# create an client
# facilitate client adopts an animal
# facilitate client puts an animal up for adoption
# After selecting from the menu the task the user is prompted through the entire process
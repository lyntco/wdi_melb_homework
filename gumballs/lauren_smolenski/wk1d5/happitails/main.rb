require_relative 'client'
require_relative 'animal'

require 'pry'

$animals = []
$clients = []

animal_details = {
  :name => "Gilbert",
  :age => 1,
  :gender => "male",
  :species => "rabbit",
}

gilbert = Animal.new(animal_details)

michael_details = {
  :name => "Michael",
  :number_of_children => 3,
  :age => 36,
  :number_of_pets => 5,
  :animals => []
}

michael = Client.new(michael_details)

$animals << gilbert
$clients << michael

def menu
  puts "What would you like to do? (Please type the number of the option)

  1. display all animals
  2. display all clients
  3. create an animal
  4. create a client
  5. facilitate client adopts an animal
  6. facilitate client puts an animal up for adoption
  7. Quit Happitails"
  print "option: "
  option = gets.chomp.to_i
end

def list_animals
  if $animals != nil
    $animals.each do |animal|
      puts animal.to_s
    end
  else
    puts "There are no animals up for adoption at this time."
  end
end

def list_clients
  $clients.each do |client|
    puts client.to_s
  end
end

def add_animal
  puts "Please enter animals details below."
  print "name: "
  name = gets.chomp
  print "age: "
  age = gets.chomp
  print "gender: "
  gender = gets.chomp
  print "species: "
  species = gets.chomp

  new_animal_details = {
  :name => name,
  :age => age,
  :gender => gender,
  :species => species,
  }

  $animals << Animal.new(new_animal_details)
  puts "#{name} has been added to the database."
end

def add_client
  puts "Please enter clients details below."
  print "name: "
  name = gets.chomp
  print "number of children: "
  number_of_children = gets.chomp
  print "age: "
  age = gets.chomp
  print "number number_of_pets "
  number_of_pets = gets.chomp

  new_client_details = {
  :name => name,
  :number_of_children => number_of_children,
  :age => age,
  :number_of_pets => number_of_pets,
  }

  $clients << Client.new(new_client_details)
  puts "#{name} has been added to the database."
end

def adopt_animal
  puts "Which client would like to adopt an animal?"
  list_clients
  print "client: "
  client_adopt = gets.chomp
  match_client = $clients.find { |client| client.name == client_adopt }
  if match_client
    puts "Which animal would you like to adopt. Please type it's name."
    list_animals
    print "animal: "
    animal_adopt = gets.chomp
    match_animal = $animals.find { |animal| animal.name == animal_adopt }
    if match_animal
      index = $animals.index(match_animal)
    $animals = $animals.delete(index)
    match_client.animals << match_animal
    else
      puts "That animal doesn't exist. Press enter to return to the main menu."
      gets.chomp
      option = menu
    end
  else
    puts "That client doesn't exist. Press enter to return to the main menu."
    gets.chomp
    option = menu
  end
  puts "#{client_adopt} has now adopted #{animal_adopt}. #{animal_adopt} has been added to #{client_adopt}'s animals."
end

def put_up_animal
  puts "Which client would like to put up an animal for adoption?"
  list_clients
  print "client: "
  client_adopt = gets.chomp
  match_client = $clients.find { |client| client.name == client_adopt }
  puts "Is the animal you would like to put up for adoption in our database? (y/n) "
  response = gets.chomp
  if response == "y"
    if match_client
      puts "Which animal would the client like to put up for adoption. Please type it's name."
      puts match_client.animals.to_s
      print "animal: "
      animal_adopt = gets.chomp
      match_animal = match_client.animals.find { |animal| animal.name == animal_adopt }
      if match_animal
        index = match_client.animals.index(match_animal)
        match_client.animals = match_client.animals.delete(index)
        $animals << match_animal
      else
        puts "That animal doesn't exist. Press enter to return to the main menu."
        gets.chomp
        option = menu
      end
    else
      puts "That client doesn't exist. Press enter to return to the main menu."
      gets.chomp
      option = menu
    end
  else
    add_animal
  end
  puts "#{client_adopt} has put up this animal for adoption"
end


puts "Welcome to Happitails."
option = menu

until option == 7
  case option
  when 1
    puts "See all animals up for adoption below."
    list_animals
    puts "Please press enter to return to the main menu."
    gets.chomp
    option = menu
  when 2
    puts "See all clients below."
    list_clients
    puts "Please press enter to return to the main menu."
    gets.chomp
    option = menu
  when 3
    add_animal
    puts "Please press enter to return to the main menu."
    gets.chomp
    option = menu
  when 4
    add_client
    puts "Please press enter to return to the main menu."
    gets.chomp
    option = menu
  when 5
    adopt_animal
    puts "Please press enter to return to the main menu."
    gets.chomp
    option = menu
  when 6
    put_up_animal
    puts "Please press enter to return to the main menu."
    gets.chomp
    option = menu
  end
end

puts "Goodbye!"


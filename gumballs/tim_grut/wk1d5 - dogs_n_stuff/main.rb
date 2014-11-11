# require 'pry'
require_relative 'pet'
require_relative 'client'
require_relative 'shelter'

$shelter_list = []
$client_list = []
$pet_list = []



c1_details= {
:pets => 707,
:client_name => 89,
:client_age => 1,
:kids_number => 20,
:number_pets => true,
}

c1 = Client.new(c1_details)
$client_list << (c1)

s1_details= {
:address => "123 fake St",
:has_elevator => "no",
:has_doorman => "no",
:client => $client_list,
:number_of_floors => 999
}
s = Shelter.new(s1_details)
$shelter_list << (s1)

p1_details= {
:name => "Jenny",
:age => 75,
:gender => "Male",
:species => "Works on the bloc",
:multiple_toys => false,
}

p1 = pet.new(p1_details)
$pet_list << (p1)
c1.pets.push(p1)

puts "Welcome to your sandwich, what are you wanting to do?"
puts "1 List Shelters"
puts "2 List clients"
puts "3 List pets"
puts "4 Add buildings"
puts "5 Add Clients"
puts "6 Add pets"
puts "7 Exit"

category_input = gets.chomp.downcase

until category_input == "7"


if category_input == "1"

  puts " "
  $shelter_list.each do |building|
    puts shelter.address
    puts shelter.has_doorman
    puts shelter.has_elevator
    puts shelter.number_of_floors
    puts shelter.client

  end
end



if category_input == "2"

  puts " "
  $pet_list.each do |address|
  puts address.name
  puts address.age
  puts address.gender
  puts address.species
  puts address.multiple_toys
  end
end

if category_input == "3"

  puts " "
  $client_list.each do |pet|
  puts pet.pets
  puts pet.client_name
  puts pet.client_a
  puts pet.client_a
  puts pet.number_pets
end
end


# elsif category_input == 2 then category_input == :client
# elsif category_input == 3 then category_input == :client


# elsif category_input == 5 then category_input == :client
# elsif category_input == 6 then category_input == :client

# else puts "don't be shit"

# end

if category_input == "4"
  puts "What is the address?"
  addy = gets.chomp
  puts "Does it have an elevator?"
  elevatory = gets.chomp
    puts "is there a doorman?"
  doormany = gets.chomp
  puts "how many client?"
  clienty = gets.chomp
  puts "how many floors?"
   floorsy = gets.chomp.to_i


 s1_details = {
:address => addy,
:has_elevator => elevatory,
:has_doorman => doormany,
:client => clienty,
:number_of_floors => floorsy
}

s1 = Shelter.new(s1_details)
$shelter_list << (s1)


puts " "
 puts "You live at"
# $shelter_list.each do |building|
  puts s1.address
  puts s1.has_doorman
  puts s1.has_elevator
  puts s1.number_of_floors
  puts s1.client


end


if category_input == "5"
  puts "Who are the pets?"
  petsy = gets.chomp
  puts "What room number?"
  client_namey = gets.chomp
    puts "how many bedrooms?"
  client_agey = gets.chomp
  puts "how many bathrooms?"
  kids_numbery = gets.chomp
  puts "Is there any parking?"
   number_petsy = gets.chomp.to_i


 c1_details = {
:pets => petsy,
:client_name => client_namey,
:client_age => client_agey,
:kids_number => kids_numbery,
:number_pets => number_petsy,
}


c1 = Client.new(c1_details)
$client_list << (c1)
 s1.pets.push(a1)

puts " "
 puts "You live at"
# $shelter_list.each do |building|
  puts c1.pets
  puts c1.client_name
  puts c1.client_age
  puts c1.client_age
  puts c1.number_pets

end
#:name, :age, :gender, :species, :multiple_toys


if category_input == "6"
  puts "What's your name"
  namey = gets.chomp
  puts "What's ya age'"
  agey = gets.chomp
    puts "Whats ya gender?"
  gendery = gets.chomp
  puts "what do they do?"
  speciesy = gets.chomp
  puts "Are they funny?"
   multiple_toysy = gets.chomp.to_i


   p1_details = {
  :name => namey,
  :age => agey,
  :gender => gendery,
  :species => speciesy,
  :multiple_toys => multiple_toysy,
  }


  p1 = Pet.new(p1_details)
  $pet_list << (p1)
  c1.pets.push(p1)

    puts " "
    puts "You are"
    # $pet_list.each do |building|
    puts p1.name
    puts p1.age
    puts p1.gender
    puts p1.species
    puts p1.multiple_toys

    # end


# THE GOOD BIT
  # puts "Add pet to client"
  # apt_add = gets.chomp
  # if apt_add == "yes"
  #   puts "Which client?"
  #   $client_list.each do |client|
  #     puts "client #{client.client_name}"
  #   end
  #   puts "Enter apt tyou want"
  #   client_wan
  # else

end


puts "Welcome to your rental, what are you wanting to do?"
puts "1 List Shelters"
puts "2 List clients"
puts "3 List pets"
puts "4 Add buildings"
puts "5 Add Clients"
puts "6 Add pets"
puts "7 Exit"


category_input = gets.chomp.downcase
end




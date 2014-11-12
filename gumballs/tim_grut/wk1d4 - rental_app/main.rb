# require 'pry'
require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

$building_list = []
$apartment_list = []
$tenant_list = []



a1_details= {
:tenants => 707,
:room_number => 89,
:number_bedrooms => 1,
:number_bathrooms => 20,
:has_parking => true,
}

a1 = Apartment.new(a1_details)
$apartment_list << (a1)


b1_details= {
:address => "123 fake St",
:has_elevator => "no",
:has_doorman => "no",
:apartments => $apartment_list,
:number_of_floors => 999
}
b1 = Building.new(b1_details)
$building_list << (b1)

t1_details= {
:name => "Jenny",
:age => 75,
:gender => "Male",
:occupation => "Works on the bloc",
:is_funny => false,
}

t1 = Tenant.new(t1_details)
$tenant_list << (t1)
a1.tenants.push(t1)

puts "Welcome to your rental, what are you wanting to do?"
puts "1 List buildings"
puts "2 List Apartments"
puts "3 List Tenants"
puts "4 Add buildings"
puts "5 Add Apartment"
puts "6 Add tenants"
puts "7 Exit"

category_input = gets.chomp.downcase

until category_input == "7"


if category_input == "1"

  puts " "
  $building_list.each do |building|
    puts building.address
    puts building.has_doorman
    puts building.has_elevator
    puts building.number_of_floors
    puts building.apartments

  end
end



if category_input == "3"

  puts " "
  $tenant_list.each do |address|
  puts address.name
  puts address.age
  puts address.gender
  puts address.occupation
  puts address.is_funny
  end
end

if category_input == "3"

  puts " "
  $apartment_list.each do |tenant|
  puts tenant.tenants
  puts tenant.room_number
  puts tenant.number_bedrooms
  puts tenant.number_bedrooms
  puts tenant.has_parking
end
end


# elsif category_input == 2 then category_input == :apartment
# elsif category_input == 3 then category_input == :apartment


# elsif category_input == 5 then category_input == :apartment
# elsif category_input == 6 then category_input == :apartment

# else puts "don't be shit"

# end

if category_input == "4"
  puts "What is the address?"
  addy = gets.chomp
  puts "Does it have an elevator?"
  elevatory = gets.chomp
    puts "is there a doorman?"
  doormany = gets.chomp
  puts "how many apartments?"
  apartmenty = gets.chomp
  puts "how many floors?"
   floorsy = gets.chomp.to_i


 b1_details = {
:address => addy,
:has_elevator => elevatory,
:has_doorman => doormany,
:apartments => apartmenty,
:number_of_floors => floorsy
}

b1 = Building.new(b1_details)
$building_list << (b1)


puts " "
 puts "You live at"
# $building_list.each do |building|
  puts b1.address
  puts b1.has_doorman
  puts b1.has_elevator
  puts b1.number_of_floors
  puts b1.apartments


end


if category_input == "5"
  puts "Who are the tenants?"
  tenantsy = gets.chomp
  puts "What room number?"
  roomy = gets.chomp
    puts "how many bedrooms?"
  bedroomsy = gets.chomp
  puts "how many bathrooms?"
  bathroomsy = gets.chomp
  puts "Is there any parking?"
   parkingy = gets.chomp.to_i


 a1_details = {
:tenants => tenantsy,
:room_number => roomy,
:number_bedrooms => bedroomsy,
:number_bathrooms => bathroomsy,
:has_parking => parkingy,
}


a1 = Apartment.new(a1_details)
$apartment_list << (a1)
 b1.tenants.push(a1)

puts " "
 puts "You live at"
# $building_list.each do |building|
  puts a1.tenants
  puts a1.room_number
  puts a1.number_bedrooms
  puts a1.number_bedrooms
  puts a1.has_parking

end
#:name, :age, :gender, :occupation, :is_funny


if category_input == "6"
  puts "What's your name"
  namey = gets.chomp
  puts "What's ya age'"
  agey = gets.chomp
    puts "Whats ya gender?"
  gendery = gets.chomp
  puts "what do they do?"
  occupationy = gets.chomp
  puts "Are they funny?"
   is_funnyy = gets.chomp.to_i


   t1_details = {
  :name => namey,
  :age => agey,
  :gender => gendery,
  :occupation => occupationy,
  :is_funny => is_funnyy,
  }


  t1 = Tenant.new(t1_details)
  $tenant_list << (t1)
  a1.tenants.push(t1)

    puts " "
    puts "You are"
    # $tenant_list.each do |building|
    puts t1.name
    puts t1.age
    puts t1.gender
    puts t1.occupation
    puts t1.is_funny

    # end


# THE GOOD BIT
  # puts "Add Tenant to Apartment"
  # apt_add = gets.chomp
  # if apt_add == "yes"
  #   puts "Which apartment?"
  #   $apartment_list.each do |apartment|
  #     puts "Apartment #{apartment.room_number}"
  #   end
  #   puts "Enter apt tyou want"
  #   apartment_wan
  # else

end


puts "Welcome to your rental, what are you wanting to do?"
puts "1 List buildings"
puts "2 List Apartments"
puts "3 List Tenants"
puts "4 Add buildings"
puts "5 Add Apartment"
puts "6 Add tenants"
puts "7 Exit"


category_input = gets.chomp.downcase
end




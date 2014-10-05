require_relative "clients"
require_relative "animals"

require "pry"

#PRE EXISTING DATA
a1_details = {
	:name => "Dogsy",
	:age => 2,
	:gender => "male",
	:species => "dog"
}

a1 = Animal.new(a1_details)

animals_list = []

animals_list << a1


c1_details = {
	:name => "Jam",
	:children => 0,
	:age => 26
}

c1 = Client.new(c1_details)

client_list = []

client_list << c1





# binding.pry

#PROGRAM STARTS

def menu 
	puts "					
		>>> Welcome to HappiTails! <<<"
	puts "
	[1] Display Clients     [5] Adopt an Animal   
	[2] Display Animals     [6] Put Animal for Adoption
	[3] Create New Client   [7] Give Toys to Animals
	[4] Create New Animal   [8] Quit\n\n"

	puts "What would you like to do?"
end


menu 

input = gets.chomp.to_i

while input != 8

	case input

		when 1
			puts "\n\n\n---------------------"
			puts "Client list:\n"
			puts "---------------------"
			client_list.each {|c| puts c.to_s}
			puts "---------------------\n\n\n"

			menu
			input = gets.chomp.to_i

		when 2
			puts "\n\n\n---------------------"
			puts "Animals list:\n"
			puts "---------------------"
			animals_list.each {|a| puts a.to_s}
			puts "---------------------\n\n\n"

			menu
			input = gets.chomp.to_i

		when 3
			puts "What is the name of the client?"
			client_name = gets.chomp

			puts "How old is #{client_name}?"
			client_age = gets.chomp

			puts "How many children does #{client_name} have?"
			client_children = gets.chomp

			client_details = {
				:name => client_name,
				:age => client_age,
				:children => client_children
			}

			c = Client.new(client_details)

			client_list << c

			puts "\n\n\n---------------------"
			puts "#{c.name} has been added."
			puts "---------------------\n\n\n"

			menu
			input = gets.chomp.to_i

		when 4
			puts "What is the name of the animal?"
			animal_name = gets.chomp

			puts "What is type of animal is #{animal_name}?"
			animal_species = gets.chomp

			puts "Is #{animal_name} male or female?"
			animal_gender = gets.chomp

			puts "How old is #{animal_name}? (in years)"
			animal_age = gets.chomp

			
			animal_details = {
				:name => animal_name,
				:species => animal_species,
				:gender => animal_gender,
				:age => animal_age
			}

			a = Animal.new(animal_details)

			animals_list << a

			puts "\n\n\n---------------------"
			puts "#{a.name} has been added."
			puts "---------------------\n\n\n"

			menu
			input = gets.chomp.to_i

		when 5
			puts "Which client wishes to adopt?\n\n"
			client_list.each_with_index {|c, index| puts "#{c.to_s_pets} ---> press[#{index}]"}
			adopting_client = gets.chomp.to_i

			puts "Which animal is #{client_list[adopting_client].name} adopting?\n\n"
			animals_list.each_with_index {|a, index| puts "#{a.to_s_option} ---> press[#{index}]"}
			adopting_animal = gets.chomp.to_i

			client_list[adopting_client].pets << animals_list[adopting_animal]

			animals_list[adopting_animal].owner = client_list[adopting_client].name

			puts "\n\n\n---------------------"
			puts "#{animals_list[adopting_animal].name} has been adopted by #{client_list[adopting_client].name}."
			puts "---------------------\n\n\n"

			menu
			input = gets.chomp.to_i

		when 6
			puts "Which heartless client is sending a pet for adoption?\n\n"
			client_list.each_with_index {|c, index| puts "#{c.to_s_pets} ---> press[#{index}]"}
			get_rid_client = gets.chomp.to_i

			selected_client = client_list[get_rid_client]

			puts "Which poor animal will #{selected_client.name} send for adoption?\n\n"
			selected_client.pets.each_with_index {|p, index| puts "#{p.to_s_option} ---> press[#{index}]"}
			get_rid_animal = gets.chomp.to_i

			selected_animal = selected_client.pets[get_rid_animal]

			selected_client.pets.delete_at(get_rid_animal)

			selected_animal.owner = "no one"

			puts "\n\n\n---------------------"
			puts "#{selected_client.name} has been rid of #{selected_animal.name.to_s}."
			puts "---------------------\n\n\n"

			menu
			input = gets.chomp.to_i

		when 7
			puts "What toy would you like to give?"
			toy = gets.chomp

			puts "Which animal would you like to give the #{toy} to?\n\n"
			animals_list.each_with_index{|a, index| puts "#{a.to_s_option} ---> press[#{index}]"}
			gifted_animal = gets.chomp.to_i

			animal_received = animals_list[gifted_animal]
			animal_received.toys << toy

			puts "\n\n\n---------------------"
			puts "#{animal_received.name} has been given a #{toy}." 
			puts "#{animal_received.name} now has the following toys: #{animal_received.toys.join(", ")}."
			puts "---------------------\n\n\n"
			menu
			input = gets.chomp.to_i

		when 8
			break

	end


end	


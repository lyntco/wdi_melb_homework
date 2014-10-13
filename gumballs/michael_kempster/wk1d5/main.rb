# Include the necessary class files
require_relative 'animal.rb'
require_relative 'client.rb'
require_relative 'shelter.rb'

# Introductory menu for user's information
def intro
	puts "Welcome to HappiTails Animal Shelter!"
	puts ""
	puts "Please select an operaiton form the menu below:"
	puts "1) Display all animals"
	puts "2) Display all clients"
	puts "3) Add an animal"
	puts "4) Add a client"
	puts "5) Have a client adopt an animal"
	puts "6) Have a client put an animal up for adoption"
	puts "0) Exit the program"
	puts ""
end

def get_command(str)
	puts str
	return gets.chomp
end

command_str = "Please enter a number for the relevant operation:"
command_invalid = "Sorry, you need to enter a valid command, please try again."
client_not_found = "Sorry client name not found, please try again."
animal_not_found = "Sorry animal name not found, please try again."
thanks = "Thank you. "

# Arrays to store all animals and clients. As there is only one shelter it makes sense to create it now
animals = []
clients = []
shelter = Shelter.new(animals, clients)

# Data structures to house user input until it can be added to new object instances
animal_details = {
	:name => "",
	:age => 0,
	:gender => "",
	:species => ""
}

client_details = {
	:name => "",
	:age => 0,
	:num_children => 0,
	:num_pets => 0
}

def add_animal(animal_details)
	puts "Please add the name of the animal:"
	animal_details[:name] = gets.chomp
	puts "Please add the age of the animal:"
	animal_details[:age] = gets.chomp.to_i
	puts "Please add the gender of the animal:"
	animal_details[:gender] = gets.chomp
	puts "Please add the species of the animal:"
	animal_details[:species] = gets.chomp
	return animal_details
end

def add_client(client_details)
	puts "Please add the name of the client:"
	client_details[:name] = gets.chomp
	puts "Please add the age of the client:"
	client_details[:age] = gets.chomp.to_i
	puts "Please add the number of children of the client:"
	client_details[:num_children] = gets.chomp.to_i
	puts "Please add the number of pets of the client:"
	client_details[:num_pets] = gets.chomp.to_i
	return client_details
end

####################################################################################

intro
command = get_command(command_str)

while command != "0"
	case command
	when "1"
		# Print the contents of each animal object
		puts "List of animals..."
		puts ""
		animals.each { |animal| animal.to_strings }
		command = get_command(command_str)
	when "2"
		# Print the contents of each client object
		puts "List of clients..."
		puts ""
		clients.each { |client| client.to_strings }
		command = get_command(command_str)
	when "3"
		# Prompt the user for input
		puts "Adding an animal."
		animal_details = add_animal(animal_details)
		print thanks
		# Create the new animal instance here and store it in the array
		a = Animal.new(animal_details)
		animals.push a
		command = get_command(command_str)
	when "4"
		# Prompt the user for input
		puts "Adding a client."
		client_details = add_client(client_details)
		print thanks
		# Create the new client instance here and store it in the array
		c = Client.new(client_details)
		clients.push c
		command = get_command(command_str)
	when "5"
	# Will need to remove the relevant animal from the shelter and increment the number of pets the client has
		puts "Adopting an animal."
		puts 'Please specify the name of the client:'
		client_name = gets.chomp
		client_found = false
		clients.each { |client|
		if client.name == client_name
			client_found = true
		end
		}
		if !client_found
			puts client_not_found
		else
			puts 'Please specify the name of the animal:'
			animal_name = gets.chomp
			animal_found = false
			animals.each { |animal|
				if animal.name == animal_name
					animals.delete(animal)
					animal_found = true
					puts thanks
				end
			clients.each { |client|
			if client.name == client_name && animal_found
				client.add_pet
			end
		}
			}
			if !animal_found
				puts animal_not_found
			end
		end
		command = get_command(command_str)
	when "6"
	# Will need to add a new animal to the shelter and decrement the number of pets the client has
		puts "Putting an animal up for adoption."
		animal_details = add_animal(animal_details)
		puts 'Please specify the name of the client:'
		client_name = gets.chomp
		client_found = false
		clients.each { |client|
			if client.name == client_name
				client_found = true
				client.remove_pet
 				a = Animal.new(animal_details)
				animals.push a
				puts thanks
			end
		}
		if !client_found
			puts client_not_found
		end
		command = get_command(command_str)
	else
		puts command_invalid
		command = get_command(command_str)
	end
end

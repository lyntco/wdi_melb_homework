require 'pry'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'



shelter = Shelter.new('happitails')
# client = nil


#  a1 = {
#   @name = "Millie",
#   @species = "Dog"
#   @breed = "Black Dog"
#   @age = 3
#   @gender = "F"
#   @favorite_toys = "ball"
# }

# a1 << Animal.new()

# shelter.animals[name] = Animal.new(name, species, breed, age, gender, toy) 
# shelter.animals << Animal.new("Millie", "Dog", "Black dog", 4, "F", "ball")
# shelter.animals << Animal.new("Finn", "Dog", "Sheep Dog", 2, "M", "George")
# shelter.animals << Animal.new("Daffy", "Duck", "Dinner", 5, "?", "Finn")
# shelter.animals << Animal.new("Georg", "Cat", "Fluff Ball", 6, "F", "Mice")

# client << Client.new("Livy Swann", 30, "F", "no", 2)
# client << Client.new("Matt Swann", 36, "M", "no", 0)


def menu
  puts `clear`
  puts "\n"
  puts "\n"
  puts "\n"
  puts "    _   _                   _ _____     _ _       _   ___  "
  puts "   | | | | __ _ _ __  _ __ (_)_   _|_ _(_) |___  / | / _ ` "
  puts "   | |_| |/ _` | '_ `| '_ `| | | |/ _` | | / __| | || | | |"
  puts "   |  _  | (_| | |_) | |_) | | | | (_| | | `__ ` | || |_| |"
  puts "   |_| |_|`__,_| .__/| .__/|_| |_|'__,_|_|_|___/ |_(_)___/ "
  puts "               |_|   |_|"
  puts "\n"
  puts "\n"
  puts "\n"
  puts "\n"
  print 'Choose from the following options: Data (L)ists, (A)nimal Management, (C)lient Management or (Q)uit. '
  gets.chomp.downcase
end

input = menu

while input != 'q'
  
  case input
  
  when 'l'
    print 'Choose: (A)nimal List or (C)lient List.'
    reply = gets.chomp.downcase
   
    if reply == 'a'
      puts shelter.animals
      gets
      menu
        else reply == 'c'
      puts shelter.clients.to_s
      gets
      menu
    end
  
  when 'a'
    puts "You are in the Animal Management / Adoption Menu."
    print "Animal (i)n, (o)ut or (q)uit "
    adopt_choice = gets.chomp.downcase
    
    while adopt_choice != 'q'
      case adopt_choice
      
      when 'i'
        print "Name: "
        name = gets.chomp.capitalize
        print "Dog, Cat or Other: "
        species = gets.chomp.capitalize
        print "Breed: "
        breed = gets.chomp.capitalize
        print "Age: "
        age = gets.to_i
        print "Gender (m/f): "
        gender = gets.chomp.downcase
        print "Favorite toy: "
        toy = gets.chomp.downcase
        shelter.animals[name] = Animal.new(name, species, breed, age, gender, toy)
        puts "Animal entry created"
      
      when 'o'
        puts "These are the animals that up for adoption: "
        puts shelter.animals.keys
        print "What's the name of the animal being adopted? "
        animal_name_out = gets.chomp
        print "What's the name of the new owner? "
        new_owner = gets.chomp.capitalize
        shelter.animals[animal_name_out].add_owner(new_owner)
        puts "Animal adopted"
      end

      print "Animal (i)n, (o)ut or (q)uit "
      adopt_choice = gets.chomp.downcase
     end
 
  when 'c'
    print "Would you like to add a client? (Y)es (N)o "
    answer = gets.chomp.downcase
    if answer == 'y'
      print 'Name: '
      name = gets.chomp
      print 'Age: '
      age = gets.to_i
      print 'Gender: '
      gender = gets.chomp
      print 'Number of children: '
      num_kids = gets.to_i
      print 'Number of pets: '
      num_pets = gets.to_i
      client = Client.new(name, age, gender, num_kids, num_pets)
      shelter.clients[name]=client
      puts 'New client has been added! Press return to continue.'
      gets
      menu
    else
      menu
    end
  
  when 'q'
    puts 'Thanks using Happitails'
  end
 
  input = menu

end
require 'pry'
require_relative 'pokemon'
require_relative 'trainer'
require_relative 'center'

$p_array = []
$t_array = []
$c_array = []

pokemon_details = {
  :type => "fire",
  :name => "charmander",
  :trainer => "Ash",
  :gender => "Male"
}

charmander = Pokemon.new(pokemon_details)

$p_array.push(charmander)


trainer_details = {
  :name => "Brock",
  :age => 23,
  :pokemon_owned => ["onix", "geodude"],
  :town => "veridian city",
  :badges => "boulder"
}

brock = Trainer.new(trainer_details)
$t_array.push(brock)

c1_details = {
  :town => "Cerulean",
  :pokemon_housed => "Jigglypuff",
  :nurse => "Jenny",
  :registered_trainers => "Bob",
  :heals_to_date => 212
}

cerulean = Center.new(c1_details)
$c_array.push(cerulean)


puts "WELCOME TO Pokemon - Select a number option from below"
puts "1. List Centers"
puts "2. List Trainers"
puts "3. List Pokemon"
puts "4. Add Centers"
puts "5. Add Trainers"
puts "6. Add Pokemon"
puts "7. Exit"
input = gets.chomp

until input == "7"


  if input == "1"
    puts " "
    $c_array.each do |center|
      puts "Town: #{center.town}"
      puts "Pokemon housed? :#{center.pokemon_housed}"
      puts "Nurse?: #{center.nurse}"
      puts "Registered trainers: #{center.registered_trainers}"
      puts "Number of heals: #{center.heals_to_date}"
      puts " "
    end
  end

  if input == "2"
    puts " "
    $t_array.each do |trainer|
      puts "Name: #{trainer.name}"
      puts "Age: #{trainer.age}"
      puts "Pokemon owned: #{trainer.pokemon_owned}"
      puts "Town: #{trainer.town}"
      puts "Badges: #{trainer.badges}"
      puts " "
    end
  end

  if input == "3"
    puts " "
    $p_array.each do |pokemon|
      puts "Pokemon name: #{pokemon.name}"
      puts "Pokemon type: #{pokemon.type}"
      puts "Pokemon gender: #{pokemon.gender}"
      puts "Pokemon trainer: #{pokemon.trainer}"
      puts " "
    end
  end


  if input == "4"
    puts "What is the town?"
    center_town = gets.chomp
    puts "What pokemon does it have?"
    center_pokemon = gets.chomp
    puts "Name of nurse?"
    nurse = gets.chomp
    puts "Registered trainers:"
    registered_trainers = gets.chomp.to_i
    puts "Heals to date:"
    heals_to_date = gets.chomp.to_i

    c1_details = {
     :town => center_town,
     :pokemon_housed => center_pokemon,
     :nurse => nurse,
     :registered_trainers => registered_trainers,
     :heals_to_date => heals_to_date
    }

    c1 = Center.new(c1_details)

    $c_array << (c1)

    $c_array.each do |center|
      puts " "
      puts "Town: #{center.town}"
      puts "Pokemon contained? :#{center.pokemon_housed}"
      puts "Nurse?: #{center.nurse}"
      puts "Registered trainers: #{center.registered_trainers}"
      puts "Number of heals: #{center.heals_to_date}"
      puts " "
    end
  end

  if input == "5"
    puts "Trainer name?: "
    name = gets.chomp.to_i
    puts "Age?: "
    age = gets.chomp.to_i
    puts "Pokemon owned?: "
    pokemon_owned = gets.chomp.to_i
    puts "Home town?: "
    home_town = gets.chomp
    puts "Badges?: "
    badges = gets.chomp

    t1_details = {
     :name => name,
     :age => age,
     :pokemon_owned => pokemon_owned,
     :town => home_town,
     :badges => badges
    }

    t1 = Trainer.new(t1_details)

    $t_array << (t1)

    $t_array.each do |trainer|
      puts " "
      puts "Name: #{trainer.name}"
      puts "Age: #{trainer.age}"
      puts "Pokemon owned: #{trainer.pokemon_owned}"
      puts "Town: #{trainer.town}"
      puts "Badges: #{trainer.badges}"
      puts " "
    end

    puts "Add trainer to poke center?"
    add = gets.chomp.downcase
    if add == "yes"
      puts "Choose a center: "
      $c_array.each do |center|
        puts "Center town #{center.town}"
      end
      puts "Enter the building address you want: "
      center_want = gets.chomp
      #$b_array.find{ |building| building.address == building_want }.apartments << (a1.room_number)
      selected_center = $c_array.find{ |center| center.town == center_want }
      selected_center.registered_trainers << (t1.name)
    end
  end

  if input == "6"
    puts "What is the name?: "
    name = gets.chomp
    puts "What is the age?: "
    age = gets.chomp.to_i
    puts "What is the gender?: "
    gender = gets.chomp
    puts "What is the pokemon's trainer?: "
    trainer = gets.chomp

    p1_details = {
     :name => name,
     :age => age,
     :gender => gender,
     :trainer => trainer
    }

    p1 = Pokemon.new(p1_details)

    $p_array << (p1)

    $p_array.each do |pokemon|
      puts " "
      puts "Pokemon name: #{pokemon.name}"
      puts "Pokemon age: #{pokemon.type}"
      puts "Pokemon gender: #{pokemon.gender}"
      puts "Pokemon trainer: #{pokemon.trainer}"
      puts " "
    end

    puts "Add Pokemon to a trainer?"
    add = gets.chomp.downcase
    if add == "yes"
      puts "Choose an trainer: "
      $t_array.each do |trainer|
        puts "Trainer name #{trainer.name}"
      end
      puts "Enter the trainer name you want: "
      trainer_want = gets.chomp
      $t_array.find{ |trainer| trainer.name == trainer_want }.pokemon_owned << (p1.name)
    end
  end

  if input == "7"
  end

  puts "WELCOME TO Pokemon - Select a number option from below"
  puts "1. List Centers"
  puts "2. List Trainers"
  puts "3. List Pokemon"
  puts "4. Add Centers"
  puts "5. Add Trainers"
  puts "6. Add Pokemon"
  puts "7. Exit"
  input = gets.chomp

end
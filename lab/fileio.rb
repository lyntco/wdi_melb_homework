require 'pry'

db = File.open('database.txt','a+')

puts "Do you want to add someone to the database?"
response = gets.chomp.downcase

while response == 'y'
  puts "Enter a name, age, gender:"
  response = gets.chomp
  db.puts(response)

  puts "Do you want to add someone to the database?"
  response = gets.chomp
end

db.close

# db = File.new('database.txt','r')

# db.each do |line|
#   puts line
# end

class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

end

people_list = []

File.foreach('database.txt') do |line|
  person_array = line.chomp.split(',')
  person = Person.new(person_array[0], person_array[1], person_array[2])
  people << person
end

binding.pry
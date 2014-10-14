require 'pry'

db = File.open('data.txt','a+')

print "Do you want to add a person?"
response = gets.chomp.downcase

while response == "y"
  print 'Please enter name, age, gender:'
  response = gets.chomp
  db.puts(response)

  print "Do you want to add another person?"
  response = gets.chomp.downcase
end

db.close


# db = File.new('data.txt','r')

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

people = []

File.foreach('data.txt') do |line|
  # name = line.split(',').first
  # age = line.split(',')[1]
  # gender = line.split(',').last  # "bob,89,m"

  name, age, gender = line.split(',')

  people << Person.new(name, age, gender)
end

binding.pry
require 'pry'

a = ["Anil", "Erik", "Jonathan"]

puts a.slice(1)

puts "whats is your name"
a.push(gets.chomp)

h = {
	0 => "zero",
	1 => "one",
	:two => "two",
	"two" => 2
}

puts 

binding pry

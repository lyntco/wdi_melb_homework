#require 'numbers_and_words'

puts "Please enter a number from 0 to 99:"
number = gets.chomp

while number.to_i < 0 || number.to_i > 99
	puts "Sorry, number out of range, please enter a number from 0 to 99:"
	number = gets.chomp
end

# Add an array for the numbers

#puts "#{number.to_words}"

twenty = "twenty"
thirty = "thirty"
forty = "forty"
fifty = "fifty"
sixty = "sixty"
seventy = "seventy"
eighty = "eighty"
ninety = "ninety"

def first_order_numbers(number)

	zero = "zero"
	one = "one"
	two = "two"
	three = "three"
	four = "four"
	five = "five"
	six = "six"
	seven = "seven"
	eight = "eight"
	nine = "nine"
	ten = "ten"

	if number == "0"
		puts ""
	elsif number == "1"
		puts "#{one}"
	elsif number == "2"
		puts "#{two}"
	elsif number == "3"
		puts "#{three}"
	elsif number == "4"
		puts "#{four}"
	elsif number == "5"
		puts "#{five}"
	elsif number == "6"
		puts "#{six}"
	elsif number == "7"
		puts "#{seven}"
	elsif number == "8"
		puts "#{eight}"
	elsif number == "9"
		puts "#{nine}"
	elsif number == "10"
		puts "#{ten}"
	end
end

def teens(number)
	if number == "11"
		puts "eleven"
	elsif number == "12"
		puts "twelve"
	elsif number == "13"
		puts "thirteen"
	elsif number == "14"
		puts "fourteen"
	elsif number == "15"
		puts "fifteen"
	elsif number == "16"
		puts "sixteen"
	elsif number == "17"
		puts "seventeen"
	elsif number == "18"
		puts "eithteen"
	else
		puts "ninteen"
	end
end

def add_hyphen(number)
	if number.to_i != 0
		print "-"
	end
end

if number == "0"
	puts "zero"
elsif number.to_i <= 10
	first_order_numbers(number)
elsif number.to_i < 20
	teens(number)
else
	numbers = number.split(//)
	if numbers[0] == "1"
		print "#{ten}"
		add_hyphen(numbers[1])
		first_order_numbers(numbers[1])
	elsif numbers[0] == "2"
		print "#{twenty}"
		add_hyphen(numbers[1])
		first_order_numbers(numbers[1])
	elsif numbers[0] == "3"
		print "#{thirty}"
		add_hyphen(numbers[1])
		first_order_numbers(numbers[1])
	elsif numbers[0] == "4"
		print "#{forty}"
		add_hyphen(numbers[1])
		first_order_numbers(numbers[1])
	elsif numbers[0] == "5"
		print "#{fifty}"
		add_hyphen(numbers[1])
		first_order_numbers(numbers[1])
	elsif numbers[0] == "6"
		print "#{sixty}"
		add_hyphen(numbers[1])
		first_order_numbers(numbers[1])
	elsif numbers[0] == "7"
		print "#{seventy}"
		add_hyphen(numbers[1])
		first_order_numbers(numbers[1])
	elsif numbers[0] == "8"
		print "#{eighty}"
		add_hyphen(numbers[1])
		first_order_numbers(numbers[1])
	else
		print "#{ninety}"
		add_hyphen(numbers[1])
		first_order_numbers(numbers[1])
	end
end



















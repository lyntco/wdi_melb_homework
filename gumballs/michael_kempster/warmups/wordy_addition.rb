class Calculator

	def ask(input)
		array0 = input.split(//)

		if array0.last == "?"
			array0.pop
		end

		input = array0.join

		array1 = input.split(" ")

		numbers = []
		array1.each  do |a|
			if is_number?(a)
				numbers.push(a.to_i)
			end
		end

		sum = 0
		numbers.each { |n| sum += n }
		p sum
	end

	private

	def is_number?(num)
  	true if Float(num) rescue false
	end

end

c1 = Calculator.new

c1.ask("What is 5 plus -4?")

# puts "Please enter your wordy question:"
# input = gets.chomp

# def is_number?(num)
#   true if Float(num) rescue false
# end

# array0 = input.split(//)

# if array0.last == "?"
# 	array0.pop
# end

# input = array0.join

# array1 = input.split(" ")

# numbers = []
# array1.each  do |a|
# 	if is_number?(a)
# 		numbers.push(a.to_i)
# 	end
# end

# sum = 0
# numbers.each { |n| sum += n }

# p sum

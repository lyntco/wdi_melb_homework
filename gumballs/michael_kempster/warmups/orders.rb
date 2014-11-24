# Using integers

# puts "Please enter the number"
# number = gets.chomp.to_i

# if number < 1 || number > 999999999999
# 	puts "Sorry number out of range, please try again"
# else
# 	remainder1 = number % 1000
# 	number2 = number / 1000
# 	remainder2 = number2 % 1000
# 	number3 = number2 / 1000
# 	remainder3 = number3 % 1000
# 	number4 = number3 / 1000
# 	remainder4 = number4 % 1000

# 	if number4 > 0
# 		puts "#{remainder4} billion #{remainder3} million #{remainder2} thousand #{remainder1}"
# 	elsif number3 > 0
# 		puts "#{remainder3} million #{remainder2} thousand #{remainder1}"
# 	elsif number2 > 0
# 		puts "#{remainder2} thousand #{remainder1}"
# 	else
# 		puts "#{remainder1}"
# 	end
# end

# Using strings

puts "Please enter the number"
number = gets.chomp.reverse

# Splits the number string up into an array of chunks of three characters
array = number.scan(/.{1,3}/)

if number.to_i < 1 || number.length > 12
	puts "Sorry number out of range, please try again"
else
	if array[0]
		remainder1 = array[0].reverse
	else
		remainder1 = 0
	end
	if array[1]
		remainder2 = array[1].reverse
	else
		remainder2 = 0
	end
	if array[2]
		remainder3 = array[2].reverse
	else
		remainder3 = 0
	end
	if array[3]
		remainder4 = array[3].reverse
	else
		remainder4 = 0
	end
end

if array[3]
	puts "#{remainder4} billion #{remainder3} million #{remainder2} thousand #{remainder1}"
elsif array[2]
	puts "#{remainder3} million #{remainder2} thousand #{remainder1}"
elsif array[1]
	puts "#{remainder2} thousand #{remainder1}"
else
	puts "#{remainder1}"
end

# puts "#{remainder4} billion #{remainder3} million #{remainder2} thousand #{remainder1}"
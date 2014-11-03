
# The below method is monkeypatching the String class

puts "Please enter the phrase to check:"
input = gets.chomp

class String
	def is_palindrome?
		input = self.upcase.delete(" ")
		input == input.reverse
	end
end

puts input.is_palindrome?

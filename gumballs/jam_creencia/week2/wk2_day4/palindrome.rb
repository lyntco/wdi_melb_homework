require "pry"


class String
	def is_palindrome?
		self.downcase
		without_space = self.delete " "

		without_space == without_space.reverse
		
	end
end


# binding.pry

p "maddam".is_palindrome? #true
p "a man a plan a canal panama".is_palindrome? #true
p "i'm the goddamn batman".is_palindrome? #false
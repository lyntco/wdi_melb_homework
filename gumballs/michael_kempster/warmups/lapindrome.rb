require 'pry'

# class String
# 	def is_lapindrome?
# 		array1 = []
# 		array2 = []

# 		# This block of code does not currently work
# 		if self.length % 2 != 0
# 			self.delete_at(self.length / 2)
# 		end

# 		counter = 0
# 		while counter < self.length
# 			if counter < self.length / 2
# 				array1 << self[counter]
# 			else
# 				array2 << self[counter]
# 			end
# 				counter += 1
# 		end
		
# 		if array1.sort == array2.sort
# 			return true
# 		else
# 			return false
# 		end
# 	end
# end

class Lap
	def self.is_lapindrome?(word)
		word = word.split(//)
		array1 = []
		array2 = []

		if word.length % 2 != 0
			word.delete_at(word.length / 2)
		end

		counter = 0
		while counter < word.length
			if counter < word.length / 2
				array1 << word[counter]
			else
				array2 << word[counter]
			end
				counter += 1
		end

		if array1.sort == array2.sort
			puts "true"
			return true
		else
			puts "false"
			return false
		end
	end
end

Lap.is_lapindrome?('gaga')
Lap.is_lapindrome?('gala')
Lap.is_lapindrome?('abcde')
Lap.is_lapindrome?('abcba')

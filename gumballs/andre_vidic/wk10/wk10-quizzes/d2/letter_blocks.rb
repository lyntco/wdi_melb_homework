require 'pry'
class Letters

	def initialize
		@blocks =
			[['B','O'],
			 ['X','K'],
			 ['D','Q'],
			 ['C','P'],
			 ['N','A'],
			 ['G','T'],
			 ['R','E'],
			 ['T','G'],
			 ['Q','D'],
			 ['F','S'],
			 ['J','W'],
			 ['H','U'],
			 ['V','I'],
			 ['A','N'],
			 ['E','R'],
			 ['F','S'],
			 ['L','Y'],
			 ['P','C'],
			 ['Z','M'],]
			end

	def can_make_word(word)
		new_string = ""

		(0...(@blocks.length)).each do |element|
			if word.include?(@blocks[element][0]) && new_string.count(@blocks[element][0]) < word.count(@blocks[element][0])
				new_string << @blocks[element][0]
			elsif word.include?(@blocks[element][1]) && new_string.count(@blocks[element][1]) < word.count(@blocks[element][1])
				new_string << @blocks[element][1]
			end
		end

		# check if built_string == word string
		if word.chars.sort.join == new_string.chars.sort.join
			# p true #return true
			true
		else
			# p false #return false
			false
		end
	end
end

Letters.new.can_make_word("A")
# => true
Letters.new.can_make_word("BARK")
# => true
Letters.new.can_make_word("BOOK")
# => false
Letters.new.can_make_word("TREAT")
# => true
Letters.new.can_make_word("COMMON")
# => false
Letters.new.can_make_word("SQUAD")
# => true
Letters.new.can_make_word("CONFUSE")
# => true

class Scrabble
	@scores = {1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
							2 => ["D", "G"],
							3 => ["B", "C", "M", "P"],
							4 => ["F", "H", "V", "W", "Y"],
							5 => ["K"],
							8 => ["J", "X"],
							10 => ["Q", "Z"]}

	def self.score(string)
		array = string.upcase.split("") # Break up the word into an array of characters
		counter = 0
		score = 0
		mult_word = 1
		mult_letter = 1

		# Grab the case where the word is to be doubled/tripled
		if (array[0] == "2" || array [0] == "3") && array[1] == " "
			mult_word = array[0].to_i
			counter = 2
		end

		# Run through each letter in the array
		while counter < array.length
			# If there is a number present set it to equal mult_letter and move to the next letter in the array
			if (array[counter] == "2" || array [counter] == "3")
				mult_letter = array[counter].to_i
				counter += 1
			end
			# Run through the hash, find the relevant letter and add its value to the score
			@scores.each { |key, val|
				if val.include? array[counter]
					score += (key * mult_letter)
				end
			 }
			counter += 1
			mult_letter = 1
		end

		score = score * mult_word
		puts score
	end
end

=begin
Definition of double/triple letter/word scores: add a 2/3 before the letter and add a 2/3 followed by a space before the word
e.g Scrabble.score(2 cabbage) returns a double word score and Scrabble.score(cabba2ge) returns a double letter score for the letter g
=end

puts "Please enter the word to be scored:"
word = gets.chomp

Scrabble.score(word)

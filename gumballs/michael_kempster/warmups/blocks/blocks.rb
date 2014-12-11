class Blocks

	def can_make_word(input)
		# Array to store the blocks
		blocks = [['B','O'],
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

		# Array to store the blocks' status as they are taken
		taken_blocks = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]

		# Start by assuming we can make the word from the blocks
		outcome = true

		# Iterate through each letter in the word, compare it to each block in the blocks array, take a block if found,
		# otherwise we cannot make the block so set the outcome to false
		input.each_char do |char|
			counter = 0
			got_block = false
			while counter < 19 # Note there are only nineteen blocks, the spec said there were twenty!!!
				if blocks[counter][0] == char || blocks[counter][1] == char
					if taken_blocks[counter] == false # Block available
						got_block = true
						taken_blocks[counter] = true # Take the block
						break
					end
				end
				counter += 1
			end
			if got_block == false # No block was found to be available
				outcome = false
			end
		end

		return outcome
	end

end






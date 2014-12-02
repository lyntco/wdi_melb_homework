require 'pry'
def is_lapindrome?(input)
	# compare the first half of a string to the second regardless of order
	# if comparison is == then return lapindrome


	if input.is_a?(String) && (input.length > 1)
		if (input.length % 2 != 0)

			mid_index = ((input.length)-1)/2

		# finds half if the even word length and uses -1 to shift to index numbering
		aMidIndex = mid_index-1
		bMidIndex  = mid_index + 1

		# sort both arrays before comparison

		if input[0..aMidIndex].split("").sort == (input[bMidIndex..(input.length-1)]).split("").sort
			puts "The lapindrome of #{input} = #{input[0..aMidIndex]}"
		end
	else
		midpoint_index = (input.length/2)-1
			# search from start of input string to midpoint then from midpoint+1 to end of string. This eliminates counting the same character
			if input[0..midpoint_index].split("").sort == (input[(midpoint_index+1)..(input.length-1)].split("").sort)
				puts "The lapindrome of #{input} = #{input[0..midpoint_index]}"
			end
		end
	end
end

is_lapindrome?('6') # => false
is_lapindrome?('gaga') # => true
is_lapindrome?('abcde') # => false
is_lapindrome?('abcba') # => true
is_lapindrome?('rotor') # => true
is_lapindrome?('xyzxy') # => true
is_lapindrome?('abbaab') # => false
is_lapindrome?('ababc') # => false

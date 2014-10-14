require "pry"


def find_anagram(word, potential_anagram_array)


	answer = potential_anagram_array.select do |each_anagram|
		#select return the value if it returns true
		each_anagram.chars.sort.join == word.chars.sort.join 
		#chars returs an array of the word's characters
	end



	if answer.empty? != true
		puts "#{answer[0]} is the anagram of #{word}"

	else
	 puts "#{word} is not found"

	end


end

find_anagram("listen", %w(enlists google banana))

find_anagram("listen", %w(enlists google inlets banana))




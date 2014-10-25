class Anagram

	#def initialize(word = "", list = [])
	def initialize()
		# @word = word
		# @list = list
	end

	def find_anagram(word, list)
		flag = false
		counter = 0
		array2 = word.split(//)
		while counter < list.length
			array = list[counter].split(//)
			if array.sort == array2.sort
				puts "#{list[counter]} is an anagram for #{word}"
				flag = true
				counter += 1
			else
				counter += 1
			end
		end
		if flag == false
			puts "#{word} is not found"
		end
	end

end

anagram = Anagram.new()

anagram.find_anagram("listen", %w(enlists google inlets banana))

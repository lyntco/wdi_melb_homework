prompt = "What would you like to say to Grandma?"

def get_input(str)
	puts str
	return gets.chomp
end

class Grandma

	def initialize(input)
		@input = input
	end

	def talk(input)
		if input == "BYE"
			puts "What's that honey, I didn't hear you.."
		elsif input == input.upcase
			number = Random.rand(21) + 1930
			# Could also do the following: (1930..1950).to_a.sample
			puts "NO, NOT SINCE #{number}"
		else
			puts "SPEAK UP SONNY JIM"
		end
	end

end

input = get_input(prompt)

granny = Grandma.new(input)

while input != "BYE BYE BYE"
	granny.talk(input)
	input = get_input(prompt)
end

# while input != "BYE BYE BYE"
# 	if input == "BYE"
# 		puts "What's that honey, I didn't hear you.."
# 		input = get_input(prompt)
# 	elsif input == input.upcase
# 		number = Random.rand(20) + 1930
# 		puts "NO, NOT SINCE #{number}"
# 		input = get_input(prompt)
# 	else
# 		puts "SPEAK UP SONNY JIM"
# 		input = get_input(prompt)
# 	end
# end

class Grandma
	def initialize
	end

	def talk(input)
		counter = "bye"
		while input != "bye"
				if input == input.upcase
					year = Random.rand(1930..1950)
					puts "NO, NOT SINCE #{year}"
				elsif input == "bye"
					puts "What's that honey, I didn't hear you.."
				elsif input == "bye"
					puts "OK bye!"
				else 
					puts "SPEAK UP SONNY JIM"

				puts "Talk to Grandma:"
				
				end
				input = gets.chomp
		end

		
	end
end

puts "Talk to Grandma:"
input = gets.chomp


grandma = Grandma.new

grandma.talk(input)

puts "Talk to Bob:"
input = gets.chomp


while input != "Holla atcha lata"

	if input.include? "?"
		puts "Yeah whatever man."

	elsif input == input.upcase
		puts "WHOA, CHILL OUT MAAAAN..."
		
	elsif input == "Holla atcha lata"
		break

	else 
		puts "Cool bro."

	end

	puts "Talk to Bob:"
	input = gets.chomp

	 
end

puts "Laterz bruh"
@alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

# Would have been easier to use: ('A'..'Z').to_a
# Note could also have used ASCII code conversions, for example: 97.chr is 'a' and a.ord is 97

puts "Please enter the cypher:"
input = gets.chomp.downcase
array = input.split(//)

puts "Please enter the shift parameter:"
shift = gets.chomp.to_i

puts "Plese enter e for encode or d for decode"
direction = gets.chomp

def codify(array, shift, direction)
	array.each do |value|
		if value == " " || value == ',' || value == '.' || value == ':' || value == ';' || value == '?' || value == '!' || value == '-'
			print value
		else
			num = @alphabet.index(value)
			if direction == 'd'
				print @alphabet[num - shift]
			else
				print @alphabet[num + shift]
			end
		end
	end
	puts ""
end

codify(array, shift, direction)

# if direction == 'd'
# 	array.each do |value|
# 		if value == " "
# 			print " "
# 		elsif value == ','
# 			print ","
# 		else
# 			num = alphabet.index(value)
# 			print alphabet[num - shift]
# 		end
# 	end
# 	puts ""
# else
# 	array.each do |value|
# 		if value == " "
# 			print " "
# 		elsif value == ','
# 			print ","
# 		else
# 			num = alphabet.index(value)
# 			print alphabet[num + shift]
# 		end
# 	end
# 	puts ""
# end

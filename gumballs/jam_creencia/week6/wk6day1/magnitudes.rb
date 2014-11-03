require 'pry'

def magnitudes(number)
	number = number.to_s
	length = number.length.to_i
	hundreds = number.slice(length - 3 .. length)
	thousands = number.slice(length - 6 .. length - 4)

	if length > 9 
		first_digits = length - 10
		hundreds
		thousands
		million = number.slice(length - 9 .. length - 7)
		billion = number.slice(0..first_digits) 
		puts "#{billion} billion, #{million} million, #{thousands} thousand, #{hundreds}."

	elsif length > 6 && length <= 9

		first_digits = (length - 6) - 1
		hundreds
		thousands
		million = number.slice(0..first_digits) 
		puts "#{million} million, #{thousands} thousand, #{hundreds}."

	elsif length > 3 && length <= 6
		first_digits = (length - 3) - 1
		hundreds
		thousands = number.slice(0 .. first_digits)
		puts "#{thousands} thousand, #{hundreds}."

	elsif length > 0 && length <= 3
		hundreds = number.slice(0 .. length)
		puts "#{hundreds}."

	end

end

	



magnitudes(1234567890)
puts "---"
magnitudes(123456)

puts "---"
magnitudes(12345)

puts "---"
magnitudes(123)



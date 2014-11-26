require 'pry'

class Converter

	def convert(old_format)
		# initialise
		new_format = {
			"a"=>9, "b"=>0, "c"=>0, "d"=>0, "e"=>0,
			"f"=>0, "g"=>0, "h"=>0, "i"=>0, "j"=>0,
			"k"=>0, "l"=>0, "m"=>0, "n"=>0, "o"=>0,
			"p"=>0, "q"=>0, "r"=>0, "s"=>0, "t"=>0,
			"u"=>0, "v"=>0, "w"=>0, "x"=>0, "y"=>0,
			"z"=>0
		}

		new_format.each do |new_key, new_value|
			old_format.each do |old_key, old_value|
				# allows iteration through the old_format[1] array
				(0..(old_value.length-1)).each do |i|
					if new_key == old_value[i].downcase
						new_format[new_key]=old_key
					end
				end
			end
		end

		# turn "return new_format" off and turn "puts new_format" on => to run converter.rb
		# puts new_format

		# turn "return new_format" on and turn puts new_format off => to run test_converter.rb
		return new_format
	end

end

old_format = {
	1 => %W(A E I O U L N R S T),
	2 => %W(D G),
	3 => %W(B C M P),
	4 => %W(F H V W Y),
	5 => %W(K),
	8 => %W(J X),
	10 => %W(Q Z),
}

b= Converter.new
b.convert(old_format)

		###############################
		# search = [1,2,3,4,5,8,10]
		# search.each do |value|
		# 	old_format[value]
		# end

		# old_format.each do |key, array|
		# 	if key == "a"
		# 		puts "#{key}-----"
		# 		puts array
		# 	end
		# end

		# old_format.each do |key, array|

		# 	puts "#{key}:"
		# 	p array
		# end
		###############################

class Phone

	def initialize(number)
		@number = number
	end

	def number

		result = ""
		array = @number.split(//)

		if array.length == 11 && array.first == '1'
			array.shift
		elsif array.length == 11 && array.first != '1'
			return "0000000000"
		elsif array.length == 9
			return "0000000000"
		end
		
		array.each do |n|
			if n == '0' || n == '1' || n == '2' || n == '3' || n == '4' || n == '5' || n == '6' || n == '7' || n == '8' || n == '9'
				result << n
			end
		end

		return result
	end

	def area_code
		array = @number.split(//)
		code = ""
		3.times { code << array.shift }
		return code
	end

	def to_s
		array = @number.split(//)
		pretty = "("
		3.times { pretty << array.shift }
		pretty << ") "
		3.times { pretty << array.shift }
		pretty << "-"
		4.times { pretty << array.shift }
		return pretty
	end

end
class Fixnum
	def initialize

	end

	def in_english 

		number = self
		number_tens = number / 10
		number_single = number % 10

			single_digits = {
			0 => "zero",
			1 => "one",
			2 => "two",
			3 => "three",
			4 => "four",
			5 => "five",
			6 => "six",
			7 => "seven",
			8 => "eight",
			9 => "nine"
		}


		tens_digits = {
			1 => "teen",
			2 => "twenty",
			3 => "thirty",
			4 => "forty",
			5 => "fifty",
			6 => "sixty",
			7 => "seventy",
			8 => "eighty",
			9 => "ninety"
		}


		if number.between?(0,99)
			english_tens = tens_digits[number_tens]
			english_single = single_digits[number_single]

			if english_tens == nil
				puts english_single
			elsif number == 10
				puts "ten"
			elsif number == 11
				puts "eleven"
			elsif number == 12
				puts "twelve"
			elsif number == 13
				puts "thirteen"
			elsif number == 15
				puts "fifteen"
			elsif number_tens == 1
				puts "#{english_single}#{english_tens}"
			elsif number_single == 0
				puts english_tens
			else
				puts "#{english_tens}-#{english_single}"
			end

		else

			puts "Your number is out of range"

		end

	end


end


100.in_english
99.in_english
12.in_english
0.in_english
-1.in_english
10.in_english
def addition (input_select)
			sub_menu_entry(input_select)

			#split the string at each + and save to an array
			values = gets.split("+")

			#initialise our computed variable, sum, to float
			sum = sum.to_f

			#step through the array and evaluate numbers only
			values.each_with_index do |value, index|
			if value.class != Fixnum

				#initialise sum to handle leading positive number
				#this is specifically for the subtraction case
				if index == 0
					sum = value.to_f
					else
					sum = sum +(value.to_f)
				end
			end
		end
			puts "--------------------------"
			puts "your evaluated sum = #{sum}"
			puts "--------------------------"

			main_menu
end

def subtraction (input_select)

		sub_menu_entry(input_select)

		#split the string at each + and save to an array
			values = gets.split("-")

			#initialise our computed variable, sum, to float
			sum = sum.to_f

			#step through the array and evaluate numbers only
			values.each_with_index do |value, index|
			if value.class != Fixnum

				#initialise sum to handle leading positive number
				#this is specifically for the subtraction case
				if index == 0
					sum = value.to_f
					else
					sum = sum -(value.to_f)
				end
			end
		end
		puts "--------------------------"
		puts "your evaluated subtraction = #{sum}"
		puts "--------------------------"

	main_menu
end

def multiplication (input_select)

		sub_menu_entry(input_select)

		#split the string at each + and save to an array
			values = gets.split("*")

			#initialise our computed variable, sum, to float
			sum = sum.to_f

			#step through the array and evaluate numbers only
			values.each_with_index do |value, index|
			if value.class != Fixnum

				#initialise sum to handle leading positive number
				#this is specifically for the subtraction case
				if index == 0
					sum = value.to_f
					else
					sum = sum *(value.to_f)
				end
			end
		end
		puts "--------------------------"
		puts "your evaluated multiplcation = #{sum}"
		puts "--------------------------"

	main_menu
end

def division (input_select)

		sub_menu_entry (input_select)

		#split the string at each + and save to an array
			values = gets.split("/")

			#initialise our computed variable, sum, to float
			sum = sum.to_f

			#step through the array and evaluate numbers only
			values.each_with_index do |value, index|
			if value.class != Fixnum

				#initialise sum to handle leading positive number
				#this is specifically for the subtraction case
				if index == 0
					sum = value.to_f
					else
					sum = sum /(value.to_f)
				end
			end
		end
		puts "--------------------------"
		puts "your evaluated division = #{sum}"
		puts "--------------------------"

	main_menu
end

def exponent (input_select)

		sub_menu_entry(input_select)

		#split the string at each + and save to an array
			values = gets.split("**")

			#initialise our computed variable, sum, to float
			sum = sum.to_f

			#step through the array and evaluate numbers only
			values.each_with_index do |value, index|
			if value.class != Fixnum

				#initialise sum to handle leading positive number
				#this is specifically for the subtraction case
				if index == 0
					sum = value.to_f
					else
					sum = sum **(value.to_f)
				end
			end
		end
		puts "--------------------------"
		puts "your evaluated exponent = #{sum}"
		puts "--------------------------"

	main_menu
end

def sub_menu_entry (input_select)

	if input_select =="a"
		name= "The addition menu"
		operand = '+'

		elsif input_select =="s"
		name= "The subtraction menu"
		operand = '-'

		elsif input_select =="m"
		name= "The multiplication menu"
		operand = '*'

		elsif input_select =="d"
		name= "The division menu"
		operand = '/'

		elsif input_select =="e"
		name= "The exponent/ nth root menu"
		operand = '**'

	end

		puts "=========================="
		puts name
		puts "=========================="
		puts "Please enter your values seperated by the #{operand} operand"
end

def main_menu

	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "Welcome to Calculator Menu"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"

	puts "Choose your operand from the list below:"
	puts "a for addition"
	puts "s for subtraction"
	puts "m for multiplication"
	puts "d for division"
	puts "e for exponent or nth root (^1/n)"

	puts "q to quit"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
	input_select = gets.chomp.to_s.downcase

	if input_select =="a"
		addition(input_select)

		elsif input_select =="s"
			subtraction(input_select)

		elsif input_select =="m"
			multiplication(input_select)

		elsif input_select =="d"
		division(input_select)

		elsif input_select =="e"
		exponent(input_select)

		elsif input_select =="q"
		abort("program ending")
	end
end
main_menu
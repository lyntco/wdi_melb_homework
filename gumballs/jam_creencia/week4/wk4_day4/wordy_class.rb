class Calculator
	def initialize

	end

	def ask(question)
		word_array = question.split(' ')

		#finds the two integers
		integers = word_array.map {|x| x[/\d+/]}
		integers = integers.delete_if {|x| x == nil}
		num1 = integers[0].to_f
		num2 = integers[1].to_f

		#do the operation
		operate = word_array.map do |word|
			if word == 'plus' 
				num1 + num2
			elsif word == 'minus'
				num1 - num2
			elsif word == 'times'
				num1 * num2
			elsif word == 'divided'
				num1 / num2	
			end
		end
		operate = operate.compact.join.to_f
	end
end


c1 = Calculator.new

puts c1.ask('what is -10 divided by -5?')
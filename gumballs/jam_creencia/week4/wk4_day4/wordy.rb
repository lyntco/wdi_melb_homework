
question = 'What is -24 divided by -8?'
word_array = question.split(' ')

#finds the two integers
integers = word_array.map {|x| x[/\d+/]}
integers = integers.delete_if {|x| x == nil}
num1 = integers[0].to_i
num2 = integers[1].to_i


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
operate = operate.compact.join.to_i



p operate
puts "---"
p integers
p num1
p num2








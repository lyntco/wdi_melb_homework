#find out if each max up to X is divisible by 3 or 5. 
#if it is, put it in an array
#add everything in the array

require 'pry'

def divisible (max, multiple1, multiple2)
	list = []

	1.upto(max) do |x|
		if x % multiple1 == 0 || x % multiple2 == 0
			list << x

		end
	end

	sum = list.reduce(:+)

	if sum == nil
		puts "The multiples can't be higher than the maximum number."
	else 
		puts sum
	end

end

divisible(20, 3, 5)
divisible(99, 9, 11)
divisible(30, 32, 33)


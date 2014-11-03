
array = []

puts "Please enter the number to sum upto:"
number = gets.chomp.to_i

puts "please enter a number to multiple by (type g to go):"
item = gets.chomp
array.push(item.to_i)

while item != "g"
	puts "please enter a number to multiple by (type g to go):"
	array.push(item.to_i)
	puts "please enter a number to multiple by (type g to go):"
	item = gets.chomp
end

counter = 0
nextnum = 0

while array != []
	multiple = array.shift
	while counter < number
		
		if counter % multiple == 0
			nextnum += multiple
			sum += nextnum
		end

		counter += 1
	end

end

puts sum

#######################################################

# puts "pleae enter a number to multiple by:"
# multiple = gets.chomp.to_i

# sum = 0
# counter = 0
# nextnum = 0

# while counter < number
	
# 	if counter % multiple == 0
# 		nextnum += multiple
# 		sum += nextnum
# 	end

# 	counter += 1
# end

# puts sum

#######################################################

# puts "Please enter the number to sum upto:"
# number = gets.chomp.to_i

# sum = 0
# counter = 1
# nextnumthrees = 0
# nextnumfives = 0

# while counter < number

# 	if counter % 3 == 0
# 		nextnumthrees += 3
# 		sum += nextnumthrees
# 	end

# 	if counter % 5 == 0
# 		nextnumfives += 5
# 		sum += nextnumfives
# 	end

# 	counter += 1
# end

# puts sum
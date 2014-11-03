def elevator(start_level, finish_level)
	max_level = 10
	diff = finish_level - start_level

	start_array = start_level.split(//)
	if start_array.first = "B"
		start_level = -start_level[1]
	end

	# if finish_level.split(//).first = "B"
	# 	finish_level = -finish_level
	# end

	if start_level > max_level || finish_level > max_level
		puts "This level doesn't exist"
	elsif finish_level > start_level
		puts "You'll go up #{diff} levels"
	elsif finish_level < start_level
		puts "You'll go down #{diff.abs} levels"
	else
		puts "You are already on level #{start_level}"
	end

end

# elevator(1,3)
# elevator(3,1)
# elevator(2,2)
# elevator(2,20)
# elevator(20,2)
elevator("B1", 3)
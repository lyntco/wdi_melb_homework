
def arrange_refactored(list, groups_of)
	result = []
	group = []
	while list.length >= groups_of
		result.push(list.values_at(0...groups_of))
		list = list.drop(groups_of)
	end
	return result.push(result.pop.concat(list))
end

def arrange(list, groups_of)
	result = [] # To store the final array of arrays in
	group = [] # Temporary array to store elements during each iteration of the while loop

	# When you still have complete sets of elements in the array
	while list.length >= groups_of
		group = list.values_at(0...groups_of)
		list = list.drop(groups_of)
		result.push(group)
	end
	# Grab the last array out of the result and concatenate it to the left over input,
	# then push it back to the result
	last = result.pop
	final = last.concat(list)
	result.push(final)
	return result
end

mylist = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]

myresult = arrange_refactored(mylist, 3)
p myresult
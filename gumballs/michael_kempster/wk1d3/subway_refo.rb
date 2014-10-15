# Prompt user for input

puts "Please enter the line you are getting on at (N, L, 6):"
start_line = gets.chomp
puts "Please enter the stop you are getting on at:"
start_station = gets.chomp
puts "Please enter the line you are getting off at (N, L, 6):"
finish_line = gets.chomp
puts "Please enter the stop you are getting off at:"
finish_station = gets.chomp
puts ""

# Store the lines in a hash of three arrays

subway_lines = {
	"N" => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
	"L" => ["8th", "6th", "Union Square", "3rd", "1st"],
	"6" => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
}

# Array to store the resultant path throuhg the network in 

route = []

def move_up(start, finish, subway_lines, line, route)
counter = start
	while counter <= finish
		route << subway_lines[line][counter]
		counter += 1
	end
	return route
end

def move_down(start, finish, subway_lines, line, route)
	counter = start
	while counter >= finish
		route << subway_lines[line][counter]
		counter -= 1
	end
	return route
end

########################################################################################################

# For cases where the line does not need to change do the following:
# Get the locations of the starting and ending stations in the relevant array, use the array indices to track the stations
# Compare the two to determine which way the user wants to go (higher or lower index values)
# Traverse through the array in the correct direction, listing each station as it is encountered until the destination is reached

if start_line == finish_line
	start = subway_lines[start_line].index(start_station)
	finish = subway_lines[start_line].index(finish_station)
	if start < finish 	# Need to move from left to right through the array
		route = move_up(start, finish, subway_lines, start_line, route)
		puts route
	else				# Need to move from right to left through the array
		route = move_down(start, finish, subway_lines, start_line, route)
		puts route
	end

# For cases where the line does need to change do the follwing:
# Get the locations of the starting and ending stations in the relevant arrays, use the array indices to track the stations
# Compare the two to determine which way the user wants to go (higher or lower index values)
# Traverse through the array in the correct direction, listing each station as it is encountered until the interchange is reached
# Then determine which way the second part of the journey needs to go in the second array (higher or lower index values again)
# Switch to the other line and continue on until the destination is reached

else
	start = subway_lines[start_line].index(start_station)
	finish = subway_lines[finish_line].index(finish_station)
	union_start = subway_lines[start_line].index("Union Square")
	union_finish = subway_lines[finish_line].index("Union Square")
	if start < union_start 	# Need to move from left to right through the array
		route = move_up(start, union_start - 1, subway_lines, start_line, route)
		# This is where the interchange takes place between the lines
		if union_finish < finish						# Need to determine which way the journey will continue
			route = move_up(union_finish, finish, subway_lines, finish_line, route)
			puts route
		else
			route = move_down(union_finish, finish, subway_lines, finish_line, route)
			puts route
		end
	else										# Need to move from right to left through the array
		route = move_down(start, union_start + 1, subway_lines, start_line, route)
		# This is where the interchange takes place between the lines
		if union_finish < finish						# Need to determine which way the journey will continue
			route = move_up(union_finish, finish, subway_lines, finish_line, route)
			puts route
		else
			route = move_down(union_finish, finish, subway_lines, finish_line, route)
			puts route
		end
	end
end


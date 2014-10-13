
=begin
	
TO DO
=====

Need to fully test for all possible paths through the network
Refactor the code as there is a lot of duplication - need to use methods
For the case where the user needs to change lines advise that twhen they get to Union Squatre that they need to change trains
for the relevant line	

=end


puts "Please enter the line you are getting on at (N, L, 6):"
start_line = gets.chomp
puts "Please enter the stop you are getting on at:"
start_station = gets.chomp
puts "Please enter the line you are getting off at (N, L, 6):"
finish_line = gets.chomp
puts "Please enter the stop you are getting off at:"
finish_station = gets.chomp
puts ""

# Just use three arrays for the time being and add them to a hash later for easy expansion to more lines

n_line = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
l_line = ["8th", "6th", "Union Square", "3rd", "1st"]
six_line = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]

#--------------------------------------------------------------------------------------

# For cases where the line does not need to change do the following:
# Get the locations of the starting and ending stations in the relevant array, use the array indices to track the stations
# Compare the two to determine which way the user wants to go (higher or lower index values)
# Traverse through the array in the correct direction, listing each station as it is encountered until the destination is reached

if start_line == finish_line
	if start_line == "N"
		start = n_line.index(start_station)
		finish = n_line.index(finish_station)
		if start < finish 	# Need to move from left to right through the array
			counter = start
			while counter <= finish
				puts n_line[counter]
				counter += 1
			end
		else				# Need to move from right to left through the array
			counter = start
			while counter >= finish
				puts n_line[counter]
				counter -= 1
			end
		end
	elsif start_line == "L"
		start = l_line.index(start_station)
		finish = l_line.index(finish_station)
		if start < finish 	# Need to move from left to right through the array
			counter = start
			while counter <= finish
				puts l_line[counter]
				counter += 1
			end
		else				# Need to move from right to left through the array
			counter = start
			while counter >= finish
				puts l_line[counter]
				counter -= 1
			end
		end
	else
		start = six_line.index(start_station)
		finish = six_line.index(finish_station)
		if start < finish 	# Need to move from left to right through the array
			counter = start
			while counter <= finish
				puts six_line[counter]
				counter += 1
			end
		else				# Need to move from right to left through the array
			counter = start
			while counter >= finish
				puts six_line[counter]
				counter -= 1
			end
		end
	end

# For cases where the line does need to change do the follwing:
# Get the locations of the starting and ending stations in the relevant arrays, use the array indices to track the stations
# Compare the two to determine which way the user wants to go (higher or lower index values)
# Traverse through the array in the correct direction, listing each station as it is encountered until the interchange is reached
# Then determine which way the second part of the journey needs to go in the second array (higher or lower index values again)
# Switch to the other line and continue on until the destination is reached

else
	if start_line == "N" && finish_line == "L"
		start = n_line.index(start_station)
		finish = l_line.index(finish_station)
		if start < n_line.index("Union Square") 	# Need to move from left to right through the array
			counter = start
			while n_line[counter] != "Union Square"
				puts n_line[counter]
				counter += 1
			end
			counter = l_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts l_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts l_line[counter]
					counter -= 1
				end
			end
		else										# Need to move from right to left through the array
			counter = start
			while n_line[counter] != "Union Square"
				puts n_line[counter]
				counter -= 1
			end
			counter = l_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts l_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts l_line[counter]
					counter -= 1
				end
			end
		end
	elsif start_line == "N" && finish_line == "6"
		start = n_line.index(start_station)
		finish = six_line.index(finish_station)
		if start < n_line.index("Union Square") 	# Need to move from left to right through the array
			counter = start
			while n_line[counter] != "Union Square"
				puts n_line[counter]
				counter += 1
			end
			counter = six_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts six_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts six_line[counter]
					counter -= 1
				end
			end
		else										# Need to move from right to left through the array
			counter = start
			while n_line[counter] != "Union Square"
				puts n_line[counter]
				counter -= 1
			end
			counter = six_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts six_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts six_line[counter]
					counter -= 1
				end
			end
		end
	elsif start_line == "L" && finish_line == "N"
		start = l_line.index(start_station)
		finish = n_line.index(finish_station)
		if start < l_line.index("Union Square") 	# Need to move from left to right through the array
			counter = start
			while l_line[counter] != "Union Square"
				puts l_line[counter]
				counter += 1
			end
			counter = n_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts n_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts n_line[counter]
					counter -= 1
				end
			end
		else										# Need to move from right to left through the array
			counter = start
			while l_line[counter] != "Union Square"
				puts l_line[counter]
				counter -= 1
			end
			counter = n_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts n_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts n_line[counter]
					counter -= 1
				end
			end
		end
	elsif start_line == "L" && finish_line == "6"
		start = l_line.index(start_station)
		finish = six_line.index(finish_station)
		if start < l_line.index("Union Square") 	# Need to move from left to right through the array
			counter = start
			while l_line[counter] != "Union Square"
				puts l_line[counter]
				counter += 1
			end
			counter = six_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts six_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts six_line[counter]
					counter -= 1
				end
			end
		else										# Need to move from right to left through the array
			counter = start
			while l_line[counter] != "Union Square"
				puts l_line[counter]
				counter -= 1
			end
			counter = six_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts six_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts six_line[counter]
					counter -= 1
				end
			end
		end
	elsif start_line == "6" && finish_line == "N"
		start = six_line.index(start_station)
		finish = n_line.index(finish_station)
		if start < six_line.index("Union Square") 	# Need to move from left to right through the array
			counter = start
			while six_line[counter] != "Union Square"
				puts six_line[counter]
				counter += 1
			end
			counter = n_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts n_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts n_line[counter]
					counter -= 1
				end
			end
		else										# Need to move from right to left through the array
			counter = start
			while six_line[counter] != "Union Square"
				puts six_line[counter]
				counter -= 1
			end
			counter = n_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts n_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts n_line[counter]
					counter -= 1
				end
			end
		end
	elsif start_line == "6" && finish_line == "L"
		start = six_line.index(start_station)
		finish = l_line.index(finish_station)
		if start < six_line.index("Union Square") 	# Need to move from left to right through the array
			counter = start
			while six_line[counter] != "Union Square"
				puts six_line[counter]
				counter += 1
			end
			counter = l_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts l_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts l_line[counter]
					counter -= 1
				end
			end
		else										# Need to move from right to left through the array
			counter = start
			while six_line[counter] != "Union Square"
				puts six_line[counter]
				counter -= 1
			end
			counter = l_line.index("Union Square") # This is where the interchange takes place between the lines
			if counter < finish						# Need to determine which way the journey will continue
				while counter <= finish
					puts l_line[counter]
					counter += 1
				end
			else
				while counter >= finish
					puts l_line[counter]
					counter -= 1
				end
			end
		end
	end
end

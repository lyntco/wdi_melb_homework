require "pry"

G = 0
B1 = -1
B2 = -2

def elevator(start, stop)

 levels = stop - start

	if start > 50 || stop > 50 || start < -2 || stop < -2 
		puts "Level doesn't exist"

	elsif levels == 0 

		puts "You're already in level #{start}"

 	elsif levels == levels.abs
 		puts "You'll go up #{levels} levels"

	else
 		puts "You'll go down #{levels.abs} levels"

 end


end



elevator(1,3)
elevator(3,1)
elevator(2,2)


puts "-----"

elevator(1,59)
elevator(G,10)
elevator(B1,B1)




# puts "Welcome to GA Elevator!"
# puts "There are 50 levels to the GA building and 2 basement levels (B1 and B2)"
# puts "Please select your level as follows: \n\nelevator(starting level, stopping level)"








puts "==========================="
puts "The 99 Bottles of Beer Song"
puts "==========================="
#obtain starting number of bottles
puts "Enter the number of bottles of beer"
bottle = gets.chomp.to_i

#obtain the beer type
puts "Enter the type of beer"
beer_type =gets.chomp
puts "==========================="


def beer_song(beer_type, bottle)

	#prints out the reoccuring verse
	bottle.downto(1) do |i|
		print "#{i} bottles of #{beer_type} on the wall"
		puts ", #{i} bottles of #{beer_type}."
		print "Take one down and pass it around, "
		
		if i>1
			puts"#{i-1} bottles of #{beer_type} on the wall." 
			print"\n"

		else
		#deals with the 1 bottle and no bottle of beer scenario
		puts "no more bottles of #{beer_type} on the wall."
		print"\n"
		puts "No more bottles of #{beer_type} on the wall, no more bottles of #{beer_type}.
Go to the store and buy some more, 99 bottles of #{beer_type} on the wall."
		end
	end
end

beer_song(beer_type, bottle)

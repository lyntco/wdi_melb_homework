n = 99

while n > 0 do

	if n > 1

		puts "#{n.to_s} bottles of beer on the wall, #{n.to_s} bottles of beer."

	    n -= 1
    
        puts "Take one down and pass it around, #{n.to_s} bottles of beer on the wall."

    else 

    	puts "1 bottle of beer on the wall, 1 bottle of beer. 
    	Take it down and pass it around, no more bottles of beer on the wall. 
    	No more bottles of beer on the wall, no more bottles of beer. 
    	Go to the store and buy some more, 99 bottles of beer on the wall."

    	n -= 1
    end
end

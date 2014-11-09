
  class Beers

    def initialize(num)
      @num=num
    end

    def song
    	num = @num
  		while num>1 do
  			puts "#{num} bottles of beer on the wall, #{num} bottles of beer.\n"
  			puts "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n\n"
  			num -= 1
  		end
  		puts"No more bottles of beer on the wall, no more bottles of beer."
  		puts"Go to the store and buy some more, 99 bottles of beer on the wall."
    end

  end

  Beer = Beers.new(3)
  Beer.song

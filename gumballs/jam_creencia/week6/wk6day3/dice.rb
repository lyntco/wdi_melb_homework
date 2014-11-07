class Dice

	def self.roll(num_of_rolls = 1)
		@roll_results = []
		num_of_rolls.times {@roll_results << Random.rand(1..9)}
		
		if @roll_results.length == 1
		 @roll_results.first
		 self
		else
		 @roll_results
		 self
		end
	end


	def self.sum
		@roll_results.inject(:+)
	end

end


p Dice.roll

p Dice.roll(3)

p Dice.roll(3).sum
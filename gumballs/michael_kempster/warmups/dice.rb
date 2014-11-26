class Dice

	@array = []

	def self.roll(number = 1)
		@array = []
		counter = 0
		while counter < number
			result = Random.rand(6) + 1
			@array << result
			counter += 1
		end
		return @array
	end

end

# Note the below is NOT good practice, it is only here to show what can be done with Ruby
class Array

	def sum
		[self, self.inject(:+)]
	end

end

p Dice.roll
p Dice.roll(2)
p Dice.roll(3).sum

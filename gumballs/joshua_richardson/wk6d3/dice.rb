# Write a program to generate a standard dice roll.

# Dice.roll
# # => 6
# It should give you a different result each time.

# Dice.roll
# # => 5
# Dice.roll
# # => 2
# When you pass in a number, it rolls the dice that many times, and returns you the array of rolled dice

# Dice.roll(3)
# # => [2,5,1]
# Extension

# Write a method called sum you can chain directly after Dice.roll(n), and will return you the dice and the total, like so:
# Dice.roll(5).sum
# # => [[6,6,5,5], 22]
# At first you will get a NoMethodError for a certain ruby class.

# How do you fix this?

# Why do you get a NoMethodError on that class instead of the class you wrote?

# Display die faces after rolling.
# ________
# | *  * |
# | *  * |
# ________

class Dice
  def self.roll(rolls=1)
    @results = []

    rolls.times do
      dice = [1,2,3,4,5,6].sample
      @results << dice.sample
    end

    puts "________"
    puts "| *  * |"
    puts "| *  * |"
    puts "________"

    @results
  end

end


class Array

  def sum()
    @result_total = self.inject{ |sum,x| sum + x}
    outside_arr = [self]
    outside_arr << @result_total
  end

end

p Dice.roll(3).sum
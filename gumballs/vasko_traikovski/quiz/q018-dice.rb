  # Quiz - Dice
  # Write a program to generate a standard dice roll.

  class Dice

    def self.roll(nRolls=1)
      res = []
      return rand(6)+1 if nRolls == 1
      for i in 0..nRolls
        res << rand(6)+1
      end
      res
    end

  end

  class Array
    def sum
      [self,self.reduce(:+)]
    end
  end

  p Dice.roll
  p Dice.roll 5
  p Dice.roll(5).sum

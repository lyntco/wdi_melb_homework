require 'pry'

class ScrabbleScorer

  def score(string)

    # The hash holds how many points each letter in scrabble is worth
    points = {
          'a'=> 1, 'b'=> 3, 'c'=> 3, 'd'=> 2, 'e'=> 1, 'f'=> 4, 'g'=> 2, 'h'=>
           4, 'i'=> 1, 'j'=> 8, 'k'=> 5, 'l'=> 1, 'm'=> 3, 'n'=> 1, 'o'=> 1, 'p'=> 3,
          'q'=> 10, 'r'=> 1, 's'=> 1, 't'=> 1, 'u'=> 1, 'v'=> 4, 'w'=> 4, 'x'=> 8, 'y'=>
          4, 'z'=> 10
         }

    # iterates through a word to find how much each character is worth
    total = 0
    string.each_char do |letter|
      total += points[letter]
    end

    return total
  end
end


scrabble = ScrabbleScorer.new
puts scrabble.score("cabbage")

binding.pry





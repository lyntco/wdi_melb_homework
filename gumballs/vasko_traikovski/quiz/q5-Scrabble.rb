# Write a program that, given a word, computes the scrabble score for that word.
#
# Scrabble.score("cabbage")
# # => 14
# Extensions
# You can play a :double or a :triple letter.
# You can play a :double or a :triple word.

class Scrabble

@letters = { A: 1, E: 1, I: 1, O: 1, U: 1, L: 1, N: 1, R: 1, S: 1, T:1,
            D: 2, G: 2,
            B: 3, C: 3, M: 3, P: 3,
            F: 4, H: 4, V: 4, W: 4, Y: 4,
            K: 5,
            J: 8, X: 8,
            Q: 10, Z: 10
}

def self.score(str,opt2=:opt2)
  opt2 ||=1
  puts "Word score:"
  score = str .split("")
              .map{ |abc| @letters[abc.upcase.to_sym].to_i }
              .reduce(:+) #*word_bonus
  return score
end

end



puts Scrabble.score("cabbage")







  # puts "Wordcore:"
# puts str.split("").map{ |x| @letters[x.upcase.to_sym] }.reduce(:+)

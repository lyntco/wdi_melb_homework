
require './transform'

require 'minitest/autorun'
require "minitest/reporters" # optional
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new() # optional

describe 'scrabble migration' do

  it "convert from old format to new format" do
    old_format = {
      1 => %W(A E I O U L N R S T),
      2 => %W(D G),
      3 => %W(B C M P),
      4 => %W(F H V W Y),
      5 => %W(K),
      8 => %W(J X),
      10 => %W(Q Z),
    }

    new_format = {
      "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
      "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
      "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
      "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
      "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
      "z"=>10
    }
    convert(old_format).must_equal new_format
  end

end

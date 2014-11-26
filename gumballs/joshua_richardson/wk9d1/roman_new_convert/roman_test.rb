require './romans'

require 'minitest/autorun'

# optional pretty output that reads like a specification
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

describe 'convert' do

    [

    [1, "I"],
    [3, "III"],
    [4, "IIII"],
    [5, "V"],
    [10, "X"],
    [7, "VII"],
    [11, "XI"],
    [15, "XV"],
    [17, "XVII"],
    [20, "XX"],
    [30, "XXX"],
    [35, "XXXV"],
    [37, "XXXVII"],
    [49, "XXXXVIIII"],
    [50, "L"],
    [51, "LI"],
    [55, "LV"],
    [57, "LVII"],
    [60, "LX"],
    [74, "LXXIIII"],
    [89, "LXXXVIIII"]

    ].each do |input, expected|

    it "return #{expected} when #{input} is withdraw" do
      convert(input).must_equal expected
    end
  end

end
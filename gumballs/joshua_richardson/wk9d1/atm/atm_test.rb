require './atm'

require 'minitest/autorun'

# optional pretty output that reads like a specification
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

describe 'withdraw' do

  # sets up an object
  let(:atm) do
    Atm.new
  end

  [
    [4, false],
    [0,false],
    [10, 10]],
    [11, false]
    [15, [10,15]],
  ].each do |input, expected|

    it "return #{expected} when #{input} is withdraw" do
      atm.withdraw(input).must_equal expected
    end
  end
end
class MyNumber

  def even?(number)
    Integer(number) % 2 == 0
  end
end

# the setup
require 'minitest/autorun'

# optional pretty output that reads like specificaiton
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

describe MyNumber do

  describe 'even?' do

    # runs code before each expectation
    before do
      @my_number = MyNumber.new
    end

    # runs code afetr each expectation
    after do
    end

    it 'returns true whne number is 2' do
      @my_number.even?(2).must_equal true
    end

    it 'returns false when number is 1 do' do
      @my_number.even?(1).wont_equal true
    end

    it "returns ??? when number is the string '2'" do
      @my_number.even?('2').must_equal true
    end

    it 'raise exception when number is a character' do
      proc { @my_number.even?('a') }.must_raise ArgumentError
    end

  end

end

# class Even < miniTest::Test

#   def test_even_returns_true_when_pass_in_2

#   end

# end
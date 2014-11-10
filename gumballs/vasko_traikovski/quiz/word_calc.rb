require 'minitest/autorun'

class Calculator

  def ask(question)
    question.downcase!.slice! ("?")
    arr = question.split(" ") - %w( how much what is by )
    res = arr.shift.to_i  # grab 1st number
    arr.each_slice(2) do |sub|
      operator,num = sub
      res += num.to_i if operator==="plus"
      res -= num.to_i if operator==="minus"
    end
    res
  end

end







# c1=Calculator.new
# puts c1.ask("what is 5 plus 13 minus 3 minus 5")
# puts c1.ask("what is -5 plus 13 minus 3 minus 5")
# puts c1.ask("what is 20 divided by 2")




class CalculatorTest < MiniTest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_add_1
    assert_equal 2, @calculator.ask('What is   1 plus 1?')
  end

  def test_add_2
    assert_equal 3, @calculator.ask('How much is 1 plus 2 ?')
  end

  def test_add_more_digits
    assert_equal 45801, @calculator.ask('What is 123 plus 45678?')
  end

  def test_add_negative_numbers
    assert_equal -11, @calculator.ask('What is -1 plus -10?')
  end

  def test_add_multiple_numbers
    assert_equal 15, @calculator.ask('What is 5 plus 5 plus 5?')
  end
end
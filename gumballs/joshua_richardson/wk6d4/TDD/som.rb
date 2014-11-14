require 'minitest/autorun'
require "minitest/reporters" # optional
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new() #optional

class SumOfMultipleTest < MiniTest::Test
  def setup
    @som = Som.calc

  end

end
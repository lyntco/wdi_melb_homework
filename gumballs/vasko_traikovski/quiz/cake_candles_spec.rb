class Cake

  def candle_count(strDate)
    birthday  = Date.parse(strDate)
    today     = Date.today
    years     = ((today - birthday)/365).to_i
    can       = (0..years).to_a.reduce(:+)
    cand      = (years===1)? "candle" : "candles"
    "#{can} #{cand} have burned for you"
  end

end

require 'date'
require 'minitest'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class CakeTest < MiniTest::Test
  def setup
    @cake = Cake.new
  end

  def test_born_this_year
    assert_equal '0 candles have burned for you', @cake.candle_count('01-01-2014')
  end

  def test_1_year_old
    assert_equal '1 candle have burned for you', @cake.candle_count('1-1-2013')
  end

  def test_2_year_old
    assert_equal '3 candles have burned for you', @cake.candle_count('01-01-2012')
  end

  def test_3_year_old
    assert_equal '6 candles have burned for you', @cake.candle_count('01-01-2011')
  end

  def test_just_turn_44
    assert_equal '990 candles have burned for you', @cake.candle_count('1-1-1970')
  end

 end
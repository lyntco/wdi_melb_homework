
# require minitest/autorun
require 'date'

def candle_count(strDate)
  date = Date.parse(strDate)
  today = Date.today
  diff = today - date
  (diff/365).to_i
end

p candle_count('10/10/2010')
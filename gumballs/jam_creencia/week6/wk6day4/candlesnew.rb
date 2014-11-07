require 'date'
require 'pry'
def candle_count (year, month, day)
		today = Date.today
		bday = {
			year: year,
			month: month,
			day: day
		}

		age = today.year - bday[:year] 

		if today.month < bday[:month]  
			age - 1
		elsif today.month == bday[:month] && today.day < bday[:day]
			age - 1
		else 
			age 
		end

		array = []
		age.downto(1) {|year| array << year}
binding.pry
		 "you have had #{array.inject(:+)} birthday candles in your lifetime"

end

p candle_count(1988, 11, 5)
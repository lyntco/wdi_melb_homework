require 'pry'

def add_up_candles(n)
	counter = 0
	result = 0
	while counter <= n
		result += counter
		counter += 1
	end
	return result
end

# Returns how many days have elapsed in the current year
def days_so_far(day, month)
	months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30]
	month_count = 0
	counter = 0
	while counter < month
		month_count += months[counter]
		counter += 1
	end
	return num_days = month_count + day
end

def output(num)
	if num == 1
		puts "1 candle has burned for you"
	else
		puts "#{num} candles have burned for you"
	end
end

def candle_count(date)
	birth_date = date.split('-')
	day = birth_date[0].to_i
	month = birth_date[1].to_i
	year = birth_date[2].to_i

	current_date = Time.new
	current_day = current_date.day
	current_month = current_date.month
	current_year = current_date.year

	# Handle the case where the person's birthday might not yet have occurred
	if days_so_far(current_day, current_month) > days_so_far(day, month)
		diff = current_date.year - year
	else
		diff = current_date.year - year - 1
	end
	#binding.pry
	num_candles = add_up_candles(diff)
	output(num_candles)
end

candle_count('01-01-2014')
candle_count('01-01-2013')
candle_count('01-01-2012')
candle_count('01-01-2011')
candle_count('01-01-2010')
candle_count('31-12-2010')

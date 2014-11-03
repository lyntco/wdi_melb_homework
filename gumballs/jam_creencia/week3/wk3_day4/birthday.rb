require 'date'
require 'pry'

puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in?"
month = gets.chomp.to_i

# puts "What day were you born in?"
# day = gets.chomp.to_i



today = Date.today.to_s.split("-")

year_today = today[0].to_i

month_today = today[1].to_i

day_today = today[2].to_i


def how_many_years (year, year_today)
	year_today - year 
end



def how_many_months (month, month_today)

	if month <= month_today
		month_today - month
	else
		month_today
	end

end


# days = 365 - day

# how_many_days = today[2].to_i - day


how_many_years = how_many_years (year, year_today)
how_many_months = how_many_years (month, month_today)

puts "----"
puts how_many_years 
puts how_many_months
# puts how_many_days

puts "You have #{how_many_years} cakes and #{how_many_months} cupcakes"



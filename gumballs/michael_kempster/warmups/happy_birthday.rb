puts "Please enter your year of birth:"
year = gets.chomp.to_i
puts "Please enter your month of birth:"
month = gets.chomp.to_i
puts "Please enter your day of birth:"
day = gets.chomp.to_i

month_size = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

time = Time.new

age_years = time.year - year
age_months = time.month - month
age_days = time.day - day

if age_months < 0
	age_years -= 1
	age_months = age_months + 12
end
if age_days < 0
	age_months -= 1
	age_days = age_days + month_size[month]
end

puts "Please have #{age_years} cakes, #{age_months} cupcakes and #{age_days} crumbs!"
# Happy Birthday
# Write a program that asks what year a person was born in, then the month, then the day.
# Figure out how old they are and give them a cake for each birthday they have had.

# Extensions

# Give them a cupcake for how many months old they are.
# Give them a crumb for how many days old they are.

require 'Date'

def prompt(a)
  puts "What #{a} where you born?"
  gets.chomp.to_i
end

year  = prompt("year")
month = prompt("month")
day   = prompt("day")

time0 = Date.new(year,month,day)
time1 = Date.today

days = (time1 - time0).to_f
years = (days/365).round
months = (days/365*12).round
days = days.to_i
puts "you were born: #{time0}"
puts "The present time is: #{time1}"
puts "you are #{days} days old. You get #{days} crumbs."
puts "you are #{months} month old. You get #{months} cupcakes."
puts "you are #{years} years old. You get #{years} cakes."

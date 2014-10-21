# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Write a program that, given a number, can find the sum of all the
# multiples of 3 or 5 up to and including that number.
# (5..limit).step(5) { |n|
# gumballs= %w(vasko lauren jam andre)
# gumballs.map(&:capitalize)                      #same as below
# gumballs.map{|gumballs| gumball.capitalize}     #faster


def multiples(limit, num1=3, num2=5)
  arr = []
  (1..limit).each{ |n|
    arr << n if ( n % num1 == 0 || n% num2 ==0 )
  }
  puts arr
  "sum: #{arr.reduce(:+)}"
end

puts multiples(40)
# puts 1 + 1 unless 5>3
# puts 1 + 2 if 5>3

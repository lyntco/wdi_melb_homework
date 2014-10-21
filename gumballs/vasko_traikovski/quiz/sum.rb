# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Write a program that, given a number, can find the sum of all the
# multiples of 3 or 5 up to and including that number.
# (5..limit).step(5) { |n|

def multiples(limit)
  res = []
  (1..limit).to_a.each{ |n|
    res << n if ( n%3 == 0 || n%5 ==0 )
  }
  res
end

puts multiples(100)

# Write a program that will take a number from 0 to 999,999,999,999 and break it into chunks, adding the magnitude.

# In other words, if the input to the program is 1234567890 then the output should be '1 billion 234 million 567 thousand 890'

# The program must also report any values that are out of range.

number = 12345

array_num = number.to_s.split("")
array_num_reverse = array_num.reverse

case array_num_reverse.length
when 3..5
  print array_num_reverse[3..end].to_s
  print "thousand"
  print array_num_reverse[0..2].to_s

end


# def magnitude(number)

# end
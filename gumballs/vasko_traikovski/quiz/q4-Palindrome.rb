
def is_palindrome?(str)
  print "#{str}\n"
  str.delete!(' ')
  print " =>"
  puts str == str.reverse
end


# monkey-patching:
class String

  def is_palindrome?
    print "\n#{self}\n =>"
    self.delete!(' ')
    puts self == self.reverse
  end

end



# Quiz 4 Palindrome
# Write a program that checks whether input is a palindrome or not.

# Example method call:

is_palindrome?('maddam') # => true
is_palindrome?("a man a plan a canal panama") # => true
is_palindrome?("i'm the goddamn batman") # => false

puts "\nExtension:\n----------"
'maddam'.is_palindrome? # => true
"a man a plan a canal panama".is_palindrome? # => true
"i'm the goddamn batman".is_palindrome? # => false
# Write is_palindrome? into a ruby String method. (Monkeypatching)
# This means you can call this method directly on a string instead of passing the string into the function.

# "maddam".is_palindrome? # => true
# "a man a plan a canal panama".is_palindrome? # => "true"
# "i'm the goddamn batman".is_palindrome? # => false

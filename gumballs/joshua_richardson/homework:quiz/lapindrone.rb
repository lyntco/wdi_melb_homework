require 'pry'

# is_lapindrome?('6') # => false
# is_lapindrome?('gaga') # => true
# is_lapindrome?('abcde') # => false
# is_lapindrome?('abcba') # => true
# is_lapindrome?('rotor') # => true
# is_lapindrome?('xyzxy') # => true
# is_lapindrome?('abbaab') # => false
# is_lapindrome?('ababc') # => false

# A Lapindrome is a string which when split in the middle, gives two halves having the same characters and same frequency of each character. The order does not matter.

# If there are odd number of characters in the string, we ignore the middle character and check for lapindrome.

# Example function call:

def is_lapindrome?(string)

  if string.length % 2 === 0
    split_point = string.length / 2
    first_half = string.slice(0, split_point)
    second_half = string.slice(split_point, string.length)

    if first_half === second_half
      true
    else
      false
    end

  else
    delete_point = string.length / 2 + 1
    new_string = string.to_a

  end

end

# is_lapindrome?('6') # => false
puts is_lapindrome?('gaga') # => true
# is_lapindrome?('abcde') # => false
# is_lapindrome?('abcba') # => true
# is_lapindrome?('rotor') # => true
# is_lapindrome?('xyzxy') # => true
# is_lapindrome?('abbaab') # => false
# is_lapindrome?('ababc') # => false
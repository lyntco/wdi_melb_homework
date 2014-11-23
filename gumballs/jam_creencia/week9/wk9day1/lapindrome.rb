
require 'pry'

def is_lapindrome?(string)
	if string.length.even?
		index = string.length / 2
		if string[0..(index-1)].chars.sort.join == string[index..-1].chars.sort.join
			true
		else
			false
		end

	else
		index = string.length.to_f / 2
		index = index.floor
		if string[0..(index-1)].chars.sort.join == string[(index+1)..-1].chars.sort.join
			true
		else
			false
		end
	end

end


p is_lapindrome?('6') # => false
p is_lapindrome?('gaga') # => true
p is_lapindrome?('abcde') # => false
p is_lapindrome?('abcba') # => true
p is_lapindrome?('rotor') # => true
p is_lapindrome?('xyzxy') # => true
p is_lapindrome?('abbaab') # => false
p is_lapindrome?('ababc') # => false
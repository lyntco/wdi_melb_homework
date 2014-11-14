require 'pry'

def sum(number_from)

  @numbers_array = []
 array = (1..number_from).each { |number|

        if number % 3 == 0
          @numbers_array << number
        end
        if number % 5 == 0
          @numbers_array << number
        end
    }

  @numbers_array.uniq!

end

sum(40)

  sum = 0
  @final_sum = @numbers_array.each { |a|
  sum += a
}

puts sum



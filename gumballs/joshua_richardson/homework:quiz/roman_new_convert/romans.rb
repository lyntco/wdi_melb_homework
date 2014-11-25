def less_than_5(number, total_i)
  number.times { |n| total_i << "I" }
  total_i.join("")
end

def less_than_50(number, total_i)
  number.times { |n| total_i << "X" }
  total_i.join("")
end

def convert(number)
  total_i = []

  if number >= 1 && number < 5
    less_than_5(number, total_i)
  elsif number >= 5 && number < 10
    number -= 5
    total_i = ["V"]
    less_than_5(number, total_i)

  elsif number >= 10 && number < 50
    tens = number / 10
    remainder = number % 10

    less_than_50(tens, total_i)

    if remainder >= 5 && remainder < 10
      number = number % 5
      total_i << "V"
      less_than_5(number, total_i)
    elsif remainder >= 1 && remainder < 5
      number = number % 5
      less_than_5(number, total_i)
    end
  elsif number >= 50 && number < 55
    number = number % 5
    total_i = ["L"]
    less_than_5(number, total_i)
  elsif number >= 55 && number < 60
    number = number % 5
    total_i = ["LV"]
    less_than_5(number, total_i)
  elsif number >= 60 && number < 100
    tens = number / 10
    total_i = ["L"]
    less_than_50(tens - 5, total_i)
    ones = number % 5
    less_than_5(ones, total_i)
  end

  total_i.join("")
end







# def convert(number)

#   if number >= 1 && number < 5
#     total_i = []
#     number.times { |n| total_i << "I" }

#     total_i.join("")
#   elsif number >= 5 && number < 10
#     number -= 5
#     total_i = ["V"]
#     number.times { |n| total_i << "I" }

#     total_i.join("")
#   elsif number >= 10
#     tens = number / 10
#     remainder = number % 10
#     total_i = []

#     tens.times { |n| total_i << "X" }

#     if remainder >= 5 && remainder < 10
#       number -= 15
#       total_i << "V"
#       number.times { |n| total_i << "I" }
#     elsif remainder >= 1 && remainder < 5
#       number -= 10
#       number.times { |n| total_i << "I" }
#     end

#     total_i.join("")

#   end

# end

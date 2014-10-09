require 'pry'

def seperator
  puts "-----------------------------------"
end

seperator
puts "Hello and welcome to the subway planner."
seperator

puts "Please enter the line you will be getting on at: "
line_got_on = gets.chomp.downcase

seperator
puts "Now please enter the stop you are getting on at: "
stop_got_on = gets.chomp.downcase

seperator
puts "Now please enter the line you wish to get off at: "
line_get_off = gets.chomp.downcase

seperator
puts  "Now please enter the stop you wish to get off at: "
stop_get_off = gets.chomp.downcase


subway_router = {
  "n" => ["times square", "34th", "n line 28th", "23rd", "union square", "8th"],
  "l" => ["8th", "6th", "union square", "3rd", "1st"],
  "6" => ["grand central", "33rd", "line 6 28th", "23rd", "union square", "astor place"]
}

first_range = subway_router[line_got_on].index(stop_got_on)
second_range = subway_router[line_got_on].index(stop_get_off)
third_range = subway_router[line_get_off].index(stop_get_off)

# checks whether the line you get on at is even to the line you get off
if line_got_on != line_get_off
  # checking whether you get on at the n line.
  # then works out the first part of the trip, along line n and concatenates it to the other track route
  if (line_got_on == "n") && (subway_router[line_got_on].index(stop_got_on) > 4) && (line_get_off == "l") && (subway_router[line_get_off].index(stop_get_off) < 2)
    puts (subway_router[line_got_on][first_range..2] subway_router[line_get_off][third_range..2])

elsif (line_got_on == line_get_off) && (first_range < second_range)
  seperator
  puts "Your route is: "
  seperator
  puts subway_router[line_got_on][first_range..second_range]
elsif (line_got_on == line_get_off) && (second_range < first_range)
  seperator
  puts "Your route is: "
  seperator
  puts subway_router[line_got_on][second_range..first_range].reverse
  seperator
  end
end

pry.binding


# def stop_index(line, final_stop)
#   subway_router[line].index(final_stop)
# end

# def stop_distance(line, enter_stop, exit_stop)
#   stop_index(line, enter_stop) - stop_index(line, exit_stop)
# end



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
seperator
seperator

# line_got_on.index {|x|x=="b"

subway_router = {
  "n" => ["times square", "34th", "n line 28th", "23rd", "union square", "8th"],
  "l" => ["8th", "6th", "union square", "3rd", "1st"],
  "6" => ["grand central", "33rd", "line 6 28th", "23rd", "union square", "astor place"]
}

# works out the index of the stops on and off to reference in ranges
first_range = subway_router[line_got_on].index(stop_got_on)
second_range = subway_router[line_got_on].index(stop_get_off)


# work out the index of union square for each line then split the
# journeys into 2, so work out first line to union, then second line
# from union

#  works out the index of union for that track
#  subway_router[line].index("union square")


# checks the index of the line on or off
line_on_index = subway_router[line_got_on].index(stop_got_on)
line_off_index = subway_router[line_get_off].index(stop_get_off)

# checks unions index on your current line
union_index_on = subway_router[line_got_on].index("union square")
union_index_off = subway_router[line_get_off].index("union square")



# putting the checks for whether the stop is in front or behind into a method

# def trip_section(get_on, get_off, line)
#   if get_on < get_off
#     seperator
#     puts "Your route is:"
#     seperator
#     puts subway_router[line_got_on][first_range..second_range]

# end


if line_get_off != line_got_on
  if line_on_index < union_index_on
    if line_off_index > union_index_off
      puts "Your route is:"
      seperator
      puts subway_router[line_got_on][line_on_index..union_index_on]
      puts "----------TRANSFER------------"
      puts subway_router[line_get_off][union_index_off..line_off_index]
      seperator
    elsif line_off_index < union_index_off
      puts "Your route is:"
      seperator
      puts subway_router[line_got_on][line_on_index..union_index_on]
      puts "----------TRANSFER------------"
      puts subway_router[line_get_off][line_off_index..union_index_off].reverse
      seperator
    end
  end

  if line_on_index > union_index_on
    if line_off_index > union_index_off
      puts "Your route is:"
      seperator
      puts subway_router[line_got_on][union_index_on..line_on_index].reverse
      puts "----------TRANSFER------------"
      puts subway_router[line_get_off][union_index_on..line_off_index]
      seperator
binding.pry
    elsif line_off_index < union_index_off
      puts "Your route is:"
      seperator
      puts subway_router[line_got_on][union_index_on..line_on_index].reverse
      puts "----------TRANSFER------------"
      puts subway_router[line_get_off][line_off_index..union_index_off].reverse
      seperator
    end
  end
  # if line_got_on > union_index_on

# For one line trips
else
  if (first_range < second_range)
  seperator
  puts "Your route is:"
  seperator
  puts subway_router[line_got_on][first_range..second_range]
elsif (second_range < first_range)
  seperator
  puts "Your route is:"
  seperator
  puts subway_router[line_got_on][second_range..first_range].reverse
  seperator
end
end



# if (line_get_off == "l") && (line_got_on == "n")

# elsif (line_get_off == "n") && (line_got_on == "6")

# elsif (line_get_off == "l") && (line_got_on == "6")

# end


# binding.pry


# def stop_index(line, final_stop)
#   subway_router[line].index(final_stop)
# end

# def stop_distance(line, enter_stop, exit_stop)
#   stop_index(line, enter_stop) - stop_index(line, exit_stop)
# end



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
puts	"Now please enter the stop you wish to get off at: "
stop_get_off = gets.chomp.downcase

# line_got_on.index {|x|x=="b"

subway_router = {
  "line n" => ["times square", "34th", "n line 28th", "23rd", "union square", "8th"],
  "line l" => ["8th", "6th", "union square", "3rd", "1st"],
  "line 6" => ["grand central", "33rd", "line 6 28th", "23rd", "union square", "astor place"]
}


if line_got_on == line_get_off
  first_range = subway_router[line_got_on].index(stop_got_on)
  second_range = subway_router[line_got_on].index(stop_get_off)
  seperator
  puts "Your route is:"
  seperator
  route = subway_router[line_got_on][first_range..second_range]
  puts route
# elsif line_got_on != line_get_off

end

# def stop_index(line, final_stop)
# 	subway_router[line].index(final_stop)
# end

# def stop_distance(line, enter_stop, exit_stop)
# 	stop_index(line, enter_stop) - stop_index(line, exit_stop)
# end



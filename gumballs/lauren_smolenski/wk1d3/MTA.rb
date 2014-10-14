require 'pry'

routes = {
	"N" =>  ["Times Square", "N.34th", "N.28th", "N.23rd", "Union Square", "N.8th"],
  "L" => ["L.8th", "L.6th", "Union Square", "L.3rd", "L.1st"],
  "6" => ["Grand Central", "6.33rd", "6.28th", "6.23rd", "Union Square", "Astor"],
}

puts "Welcome to Journey Planner! At which stop are you boarding the train? (Please type a stop from the list below)"
stop = routes["N"] + routes["L"] + routes["6"]
puts stop.uniq
print "Boarding at: "
current_stop = gets.chomp

puts "Where would you like to go? (Please type a stop from the list below)"
stop = routes["N"] + routes["L"] + routes["6"]
puts stop.uniq
print "Destination: "
destination = gets.chomp

#code to figure out which line they start and end on
line_start = routes.select { |line, stops| stops.include?(current_stop) }
line_start = line_start.keys.join

line_end = routes.select { |line, stops| stops.include?(destination) }
line_end = line_end.keys.join

# Figuring out which index the start and end is. If starting or ending at Union Square, need to find index of Union Square on the oposite start or end line.
if "Union Square" == current_stop
  start = routes[line_end].index(current_stop)
  finish = routes[line_end].index(destination)

elsif "Union Square" == destination
  start = routes[line_start].index(current_stop)
  finish = routes[line_start].index(destination)

else
  start = routes[line_start].index(current_stop)
  finish = routes[line_end].index(destination)
end

puts "See your journey below and start by boarding the #{line_start} line."

if "Union Square" == current_stop || "Union Square" ==destination
  if "Union Square" == current_stop
    if start < finish
      puts routes[line_end][start..finish]
    else
      puts routes[line_end][finish..start].reverse
    end
  else # Union Square == destination
    if start < finish
      puts routes[line_start][start..finish]
    else
      puts routes[line_start][finish..start].reverse
    end
  end

elsif line_start != line_end # User will have to change lines
  change = routes[line_start].index("Union Square")
  if start < change
    puts routes[line_start][start..change]
  else
    puts routes[line_start][change..start].reverse
  end
  puts "
  Change from the #{line_start} line to the #{line_end} line at Union Square.
  "
  change = routes[line_end].index("Union Square")
  if change < finish
    puts routes[line_end][change..finish]
  else
    puts routes[line_end][finish..change].reverse
  end

elsif start < finish # User stays on same line and moves fwd
  puts routes[line_start][start..finish]

else # User stays on same line and moves backwards
  puts routes[line_start][finish..start].reverse
end


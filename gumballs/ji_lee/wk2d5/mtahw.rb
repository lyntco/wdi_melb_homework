require 'pry'
# MTA subway exercise

# Subway stops
stations = {'N' => ["ts", "34th", "28th", "23rd", "us", "8th"], 'L' => ["8th", "6th", "us", "3rd", "1st"], '6' => ["gc", "33rd", "28th", "23rd", "us", "ap"]}

# Form input details
puts "Enter start line: "          # Define starting line
starting_line = gets.chomp.downcase
puts "Enter start stop: "          # Define starting station
starting_stop = gets.chomp.downcase
puts "Enter exit line: "           # Define finishing line
ending_line = gets.chomp.downcase
puts "Enter exit station: "        # Define finishing station
ending_stop = gets.chomp.downcase  

# Lines
n_values = stations.values[0]     # line n
n_values_rev = n_values.reverse  
l_values = stations.values[1]     # line l
l_values_rev = l_values.reverse   
s_values = stations.values[2]     # line s
s_values_rev = s_values.reverse

n_start = n_values.index(starting_stop)     # n stop start value
n_end = n_values.index(ending_stop)         # n stop end value
l_start = l_values.index(starting_stop)     # l stop start value
l_end = l_values.index(ending_stop)         # l stop end value
s_start = s_values.index(starting_stop)     # n stop start value
s_end = s_values.index(ending_stop)         # n stop end value

# Distance between same line
if starting_line == ending_line
  if starting_line == "n"
    result = (n_start - n_end).abs
    if n_start < n_end
      show_route = n_values.slice(n_start..n_end)
    elsif n_start > n_end
     show_route = n_values.slice(n_end..n_start).reverse
    end
  elsif starting_line == "l"  
    result = (l_start - l_end).abs
    if l_start < l_end
      show_route = l_values.slice(l_start..l_end)
    elsif l_start > l_end
      show_route = l_values.slice(l_end..l_start).reverse
    end
  elsif starting_line == "6"
    result = (s_start - s_end).abs
    if s_start < s_end
      show_route = s_values.slice(s_start..s_end)
    elsif s_start > s_end
      show_route = s_values.slice(s_end..s_start).reverse
    end
  end
end

# Distance between different line.. calculate to and from union square
if starting_line != ending_line
  if starting_line == "n" && ending_line == "l"     # n -> us -> l
    result = (n_start - 4).abs + (2 - l_end).abs
    if (n_start - 4) < 0 && (2 - l_end) < 0      # n up, l up
      show_route = (n_values.slice(n_start...4) + l_values.slice(2..l_end))
    elsif (n_start - 4) < 0 && (2 - l_end) > 0   # n  up, l down 
      show_route = (n_values.slice(n_start...4) + l_values.slice(l_end..2).reverse)
    elsif (n_start - 4) > 0 && (2 - l_end) < 0  # n down, l up
      show_route = l_values.slice(2..l_end).unshift(n_values.slice(n_start))
    elsif (n_start - 4) > 0 && (2 - l_end) > 0  # n down, l down
      show_route = l_values.slice(l_end..2).reverse.unshift(n_values.slice(n_start))
    end  
  elsif starting_line == 'n' && ending_line == 's'      # n -> us -> s
    result = (n_start - 4).abs + (4 - s_end).abs       
    if (n_start - 4) < 0 && (4 - s_end).abs < 0       # n up, s up
      show_route = (n_values.slice(n_start...4) + s_values.slice(4..s_end))
    elsif (n_start - 4) < 0 && (4 - s_end) > 0       # n up, s down
      show_route = (n_values.slice(n_start...4) + s_values.slice(s_end..4).reverse)
    elsif (n_start - 4) > 0 && (4 - s_end) < 0     # n down, s up
      show_route = s_values.slice(4..s_end).unshift(n_values.slice(n_start))

    elsif (n_start - 4) > 0 && (4 - s_end) > 0      # n down, s down
      show_route = s_values.slice(s_end..4).reverse.unshift(n_values.slice(n_start))
    end
    # stations = {'N' => ["ts", "34th", "28th", "23rd", "US", "8th"], 'L' => ["8th", "6th", "US", "3rd", "1st"], '6' => ["gc", "33rd", "28th", "23rd", "US", "ap"]}
  elsif starting_line == 'l' && ending_line == 'n'      # l -> us -> n
    result = (l_start - 2).abs + (4 - n_end).abs  
      # l up, n up
    if (l_start - 4) < 0 && (4 - n_end).abs < 0  
      # l up, n down
      # l down, n up
      # l down, n down      
  elsif starting_line == 'l' && ending_line == 's'      # l -> us -> s
    result = (l_start - 2).abs + (4 - s_end).abs
      # l up, s up
      # l up, s down
      # l down, s up
      # l down, s down
  elsif starting_line == 's' && ending_line == 'n'      # s -> us -> n
    result = (s_start - 4).abs + (4 - n_end).abs
      # s up, n up
      # s up, n down
      # s down, n up
      # s down, n down
  elsif starting_line == 's' && ending_line == 'l'      # s -> us -> l
    result = (s_start - 4).abs + (2 - l_end).abs
      # s up, l up
      # s up, l down
      # s down, l up
      # s down, l down
  end
end

  puts "Total of #{result} station(s) from #{starting_stop} and #{ending_stop}." 
  show_route.each {|name| print name.upcase + " "}  











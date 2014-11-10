require 'pry'
puts "Welcome to journey planner!"
puts "Choose a starting line (n,l, or 6) or type 'exit' to end: "
start_line = gets.chomp
until start_line == "exit"

	lines = {
		:n => ["n_ts", "n_34", "n_28", "n_23", "us", "n_8"],
		:l => ["l_8", "l_6", "us", "l_3", "l_1"],
		:"6" => ["6_gc", "6_33", "6_28", "6_23", "us", "6_ap"]
	}
		(start_line == lines[:n]) || (start_line == lines[:l]) || (start_line == lines[:"6"])
		if start_line == false
			puts "WRONG! - enter n, l, or 6"
			start_line = gets.chomp
		else
			if start_line == "n"
			lines[start_line.to_sym]
				start_line_key = :n
			end
			if start_line == "l"
				start_line = lines[:l]
				start_line_key = :l
			end
			if start_line == "6"
				start_line = lines[:"6"]
				start_line = :"6"
			end

			puts "Choose a station #{start_line}"

			start_station = start_line.index(gets.chomp)

			puts "Choose an end line: "

			end_line = gets.chomp

			if end_line == "n"
				end_line = lines[:n]
				end_line_key = :n
			end
			if end_line == "l"
				end_line = lines[:l]
				end_line_key = :l
			end
			if end_line == "6"
				end_line = lines[:"6"]
				end_line_key = :"6"
			end

			puts "Choose a station to end (#{end_line}): "

			end_station = end_line.index(gets.chomp)

			if (start_line == end_line) && (start_station < end_station)
				puts " "
				puts lines[start_line_key][start_station..end_station]
				puts " "

			elsif (start_line == end_line) && (start_station > end_station)
				puts " "
				puts lines[start_line_key][end_station..start_station].reverse
				puts " "

			elsif (start_line != end_line) &&	(start_station < lines[start_line_key].index("us")) && (end_station < lines[end_line_key].index("us"))
				puts " "
				puts lines[start_line_key][start_station..lines[start_line_key].index("us")]
				puts lines[end_line_key][end_station..lines[end_line_key].index("us")].reverse
				puts " "

			elsif (start_line != end_line) && (start_station < lines[start_line_key].index("us")) && (end_station > lines[end_line_key].index("us"))
				puts " "
				puts lines[start_line_key][start_station..lines[start_line_key].index("us")]
				puts lines[end_line_key][lines[end_line_key].index("us")..end_station]
				puts " "

			elsif (start_line != end_line) && (start_station > lines[start_line_key].index("us")) && (end_station < lines[end_line_key].index("us"))
				puts " "
				puts lines[start_line_key][lines[start_line_key].index("us")..start_station].reverse
				puts lines[end_line_key][end_station..lines[end_line_key].index("us")].reverse
				puts " "

			elsif (start_line != end_line) && (start_station > lines[start_line_key].index("us")) && (end_station > lines[end_line_key].index("us"))
				puts " "
				puts lines[start_line_key][lines[start_line_key].index("us")..start_station].reverse
				puts lines[end_line_key][lines[end_line_key].index("us")..end_station]
				puts " "
			end
	puts " "
	puts "Welcome to journey planner!"
	puts "Choose a starting line (n,l, or 6) or type 'exit' to end: "
	start_line = gets.chomp
	end
end
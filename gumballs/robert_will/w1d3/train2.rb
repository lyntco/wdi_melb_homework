require 'pry'
puts "Welcome to journey planner!"
puts "Choose a starting line (n,l, or 6) or type 'exit' to end: "
s_line = gets.chomp
until s_line == "exit"

	lines = {
		:n => ["n_ts", "n_34", "n_28", "n_23", "us", "n_8"],
		:l => ["l_8", "l_6", "us", "l_3", "l_1"],
		:"6" => ["6_gc", "6_33", "6_28", "6_23", "us", "6_ap"]
	}
		(s_line == lines[:n]) || (s_line == lines[:l]) || (s_line == lines[:"6"])
		if s_line == false
			puts "WRONG! - enter n, l, or 6"
			s_line = gets.chomp
		else
			if s_line == "n"
			lines[s_line.to_sym]
				s_line_key = :n
			end
			if s_line == "l"
				s_line = lines[:l]
				s_line_key = :l
			end
			if s_line == "6"
				s_line = lines[:"6"]
				s_line = :"6"
			end

			puts "Choose a station #{s_line}"

			s_station = s_line.index(gets.chomp)

			puts "Choose an end line: "

			e_line = gets.chomp

			if e_line == "n"
				e_line = lines[:n]
				e_line_key = :n
			end
			if e_line == "l"
				e_line = lines[:l]
				e_line_key = :l
			end
			if e_line == "6"
				e_line = lines[:"6"]
				e_line_key = :"6"
			end

			puts "Choose a station to end (#{e_line}): "

			e_station = e_line.index(gets.chomp)

			if (s_line == e_line) && (s_station < e_station)
				puts " "
				puts lines[s_line_key][s_station..e_station]
				puts " "

			elsif (s_line == e_line) && (s_station > e_station)
				puts " "
				puts lines[s_line_key][e_station..s_station].reverse
				puts " "

			elsif (s_line != e_line) &&	(s_station < lines[s_line_key].index("us")) && (e_station < lines[e_line_key].index("us"))
				puts " "
				puts lines[s_line_key][s_station..lines[s_line_key].index("us")]
				puts lines[e_line_key][e_station..lines[e_line_key].index("us")].reverse
				puts " "

			elsif (s_line != e_line) && (s_station < lines[s_line_key].index("us")) && (e_station > lines[e_line_key].index("us"))
				puts " "
				puts lines[s_line_key][s_station..lines[s_line_key].index("us")]
				puts lines[e_line_key][lines[e_line_key].index("us")..e_station]
				puts " "

			elsif (s_line != e_line) && (s_station > lines[s_line_key].index("us")) && (e_station < lines[e_line_key].index("us"))
				puts " "
				puts lines[s_line_key][lines[s_line_key].index("us")..s_station].reverse
				puts lines[e_line_key][e_station..lines[e_line_key].index("us")].reverse
				puts " "

			elsif (s_line != e_line) && (s_station > lines[s_line_key].index("us")) && (e_station > lines[e_line_key].index("us"))
				puts " "
				puts lines[s_line_key][lines[s_line_key].index("us")..s_station].reverse
				puts lines[e_line_key][lines[e_line_key].index("us")..e_station]
				puts " "
			end
	puts " "
	puts "Welcome to journey planner!"
	puts "Choose a starting line (n,l, or 6) or type 'exit' to end: "
	s_line = gets.chomp
	end
end
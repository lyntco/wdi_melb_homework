require 'pry'
#intersection
destination_union = "union square"

mta_stations = {
	:n_line => ['times square', '34th', 'N.28th', 'N.23rd', 'union square', 'N.8th'],

	:l_line => ['L.8th', '6th', 'union square', '3rd', '1st'],

	:six_line => ['grand central', '33rd', '6.28th', '6.23rd','union square', 'astor']
}

puts "============================="
puts "WELCOME TO SUBWAY STOP MAP"
puts "============================="
print "\n"
puts "----------------------------"
puts "The n_line stop names are:"
puts "----------------------------"
puts mta_stations[:n_line]

puts "----------------------------"
puts "The l_line stop names are:"
puts "----------------------------"
puts mta_stations[:l_line]

puts "----------------------------"
puts "The 6_line stop names are:"
puts "----------------------------"
puts mta_stations[:six_line]
print "\n"

def train_line_selector(temp_train_line)
	case temp_train_line
		when "n"
		train_line = :n_line

		when "l"
		train_line = :l_line

		when "6"
		train_line = :six_line

		else
			abort("You have not entered a valid line. Program exiting")
	end
end

puts "Please enter your current stop"
current_stop = gets.chomp.downcase
puts "Please enter your current line: (n, l, or 6)"
temp_train_line = gets.chomp.downcase
current_line = train_line_selector(temp_train_line)

puts "Please enter your destination stop"
destination_stop = gets.chomp.downcase
puts "Please enter your destination line: (n, l, or 6)"
temp_train_line = gets.chomp.downcase
destination_line = train_line_selector(temp_train_line)
puts "--------------------------------------------------"


def array_stop_index_finder (mta_stations, train_line, train_stop)

	mta_stations[train_line].each_with_index do |value, index|
		return stop_index = index if value.include?(train_stop)
	end
end

#only prints train lines from the same train line
def train_stop_list_creator (mta_stations, train_line, current_stop, destination_stop)

	current_stop_index =
		array_stop_index_finder(mta_stations, train_line, current_stop)

	destination_stop_index =
		array_stop_index_finder(mta_stations, train_line, destination_stop)

	if current_stop_index < destination_stop_index
		train_stop_list = mta_stations[train_line].slice(current_stop_index, destination_stop_index)

		else
		train_stop_list = mta_stations[train_line].slice(destination_stop_index,current_stop_index).reverse
	end
end

if current_stop == destination_stop
		puts "You are already at your destination"

	elsif current_line == destination_line
		puts "No line change required"

		my_journey = train_stop_list_creator(mta_stations, current_line, current_stop, destination_stop)

		puts "Your journey has #{my_journey.length} stops and they are:"
		puts my_journey

	elsif current_line != destination_line
		puts "You will have to change lines at #{destination_union}"
		segment_1 = train_stop_list_creator(mta_stations, current_line, current_stop, destination_union)
		segment_2 = train_stop_list_creator(mta_stations, destination_line, destination_union, destination_stop)
		segment_1.pop

		puts "Your journey has #{segment_1.length + segment_2.length} stops and they are:"
		puts segment_1
		puts segment_2
end




	#Code to find current & destination lines
	# def same_line_station_list(destination-stop, current_stop)
	# destination_line = []
	# destination_stop_index = []
	# current_line = []
	# current_stop_index = []
	# mta_stations.each do |key, value|
	#  	current_line = key if value.include?(current_stop)
	#  	destination_line = key if value.include?(destination_stop)
	# end

# def line_checker_input (train_stop)
# 	mta_stations.each do |key, value|
# 		 	current_line = key if value.include?(train_stop)
# end
require 'sinatra'
require 'pry'

=begin
TO DO
=====
Add conditional statemens to load only the relevant stations upon selecting a line
Check for issues with window resizing and adjust as required
Get the MTA logo working
=end

get '/' do
	erb :index
end

get '/index' do
	erb :index
end

get '/:user_input' do

	@route = []
	@start_line = params[:start_line]
	@finish_line = params[:finish_line]
	@start_station = params[:start_station]
	@finish_station = params[:finish_station]

	subway_lines = {
		"N" => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
		"L" => ["8th", "6th", "Union Square", "3rd", "1st"],
		"6" => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
	}

	def move_up(start, finish, subway_lines, line, route)
	counter = start
		while counter <= finish
			route << subway_lines[line][counter]
			counter += 1
		end
		return route
	end

	def move_down(start, finish, subway_lines, line, route)
		counter = start
		while counter >= finish
			route << subway_lines[line][counter]
			counter -= 1
		end
		return route
	end

	if @start_line == @finish_line
		start = subway_lines[@start_line].index(@start_station)
		finish = subway_lines[@start_line].index(@finish_station)
		if start < finish 	# Need to move from left to right through the array
			@route = move_up(start, finish, subway_lines, @start_line, @route)
			erb :index
		else								# Need to move from right to left through the array
			@route = move_down(start, finish, subway_lines, @start_line, @route)
			erb :index
		end
	else
		start = subway_lines[@start_line].index(@start_station)
		finish = subway_lines[@finish_line].index(@finish_station)
		union_start = subway_lines[@start_line].index("Union Square")
		union_finish = subway_lines[@finish_line].index("Union Square")
		if start < union_start 	# Need to move from left to right through the array
			@route = move_up(start, union_start - 1, subway_lines, @start_line, @route)
			# This is where the interchange takes place between the lines
			if union_finish < finish						# Need to determine which way the journey will continue
				@route = move_up(union_finish, finish, subway_lines, @finish_line, @route)
				erb :index
			else
				@route = move_down(union_finish, finish, subway_lines, @finish_line, @route)
				erb :index
			end
		else										# Need to move from right to left through the array
			@route = move_down(start, union_start + 1, subway_lines, @start_line, @route)
			# This is where the interchange takes place between the lines
			if union_finish < finish						# Need to determine which way the journey will continue
				@route = move_up(union_finish, finish, subway_lines, @finish_line, @route)
				erb :index
			else
				@route = move_down(union_finish, finish, subway_lines, @finish_line, @route)
				erb :index
			end
		end
	end
	
end
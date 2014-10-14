require 'pry'
require 'sinatra'

get '/' do 

	@dep_line = params[:dep_line]
	@dep_station = params[:dep_station]
	@dest_line = params[:dest_line]
	@dest_station = params[:dest_station]

	n = ['Time_Square', '34th', '28th', '23rd', 'Union_Square', '8th']
	l = ['8th', '6th', 'Union_Square', '3rd', '1st']
	six = ['Grand_Central', '33rd', '28th', '23rd', 'Union_Square', 'Astor_Place']

unless @dep_station.nil? 

	case @dep_line
		when "N"
			@station = n
		when "L"
			@station = l
		when "6"
			@station = six
	end

		@dep_index = @station.index(@dep_station)

		case @dest_line
			when "N"
				@deststation = n
			when "L"
				@deststation = l
			when "6"
				@deststation = six
		end

		if @dep_line == @dest_line
			@dest_index = @deststation.index(@dest_station)
			@vari = (@dest_index.to_i - @dep_index.to_i).abs
				if @dest_index.to_i > @dep_index.to_i
					@journey_result = @station[@dep_index..@dest_index]
				elsif @dest_index.to_i < @dep_index.to_i
					@journey_result = (@station[@dest_index..@dest_index]).reverse!
				end
			
			elsif @dep_line != @dest_line
				@journey_index = @deststation.index(@dest_station)
				
				@us_index = @station.index("Union_Square")
				@line = (@us_index.to_i - @dep_index.to_i).abs
					
					if @us_index.to_i > @dep_index.to_i
							@partone = @station[@dep_index..@us_index]
						elsif @us_index.to_i < @dep_index.to_i
							@partone = (@station[@us_index..@dep_index]).reverse!
					end

					@us_index2 = @deststation.index("Union_Square")
					@line2 = (@dest_index.to_i - @us_index2.to_i).abs

					if @dest_index.to_i > @us_index2.to_i
							@journey2 = @deststation[@us_index2..@dest_index]
						elsif @dest_index.to_i < @us_index2.to_i
							@journey2 = (@deststation[@dest_index..@us_index2]).reverse!
					end

				@journey_result = (@partone + @journey2.to_a).uniq
			end
		end

		erb :home
	end

							

						


				


				

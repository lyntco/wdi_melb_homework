require 'sinatra'
require 'pry'

get '/' do
	erb :index
end

get '/journey_details' do
		@a = params.inspect


	@line_on = params["line_on"]
	@stop_on = params["stop_on"]
	@line_off = params["line_off"]
	@stop_off = params["stop_off"]


subway_lines = {

	"N" => ["Times Square", "34th", "28th(N)", "23rd(N)", "Union Square", "8th(N)"],
	"L" => ["8th(L)", "6th", "Union Square", "3rd", "1st"],
	"6" => ["Grand Central", "33rd", "28th(6)", "23rd(6)", "Union Square", "Astor"]
}

#get the line's array of stops
linestops_on = subway_lines[@line_on]
linestops_off = subway_lines[@line_off]

#get the index of the stop
$start = linestops_on.index(@stop_on)
$stop = linestops_off.index(@stop_off)

#get the index of US
$intersec1 = linestops_on.index("Union Square")
$intersec2 = linestops_off.index("Union Square")

#how far is the stop from US?
diff1 = $start - $intersec1 
diff1 = diff1.abs

diff2 = $stop - $intersec2
diff2 = diff2.abs

#lists the stops from US to the actual stop
from_us1 = $intersec1 + diff1
from_us2 = $intersec2 + diff2

$part1_backward = linestops_on[$intersec1..from_us1]

$part2_backward =
	if $stop < $intersec2
		to_rev = linestops_off[$stop..$intersec2]
		to_rev.reverse
	else
		linestops_off[$intersec2..$stop]
	end

def part1(linestops_on)
	if $start < $intersec1 
		linestops_on[$start..$intersec1]
	else
		$part1_backward.reverse
	end
end


def part2(linestops_off)

	if $intersec2 < $stop
		linestops_off[$intersec2..$stop]
	else
		$part2_backward
	end

end

@merge = part1(linestops_on) << part2(linestops_off)

@route = @merge.flatten.uniq!



	erb :journey
end




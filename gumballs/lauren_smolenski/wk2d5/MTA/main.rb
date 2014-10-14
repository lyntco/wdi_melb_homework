require 'sinatra'
require 'pry'
require 'rerun'

get '/' do
  erb :index
end

get '/journey_map' do

  current_stop = params["current_stop"]
  destination = params["destination"]
  @current_stop = params["current_stop"]
  @destination = params["destination"]

  routes = {
  "N" =>  ["Times Square", "N.34th", "N.28th", "N.23rd", "Union Square", "N.8th"],
  "L" => ["L.8th", "L.6th", "Union Square", "L.3rd", "L.1st"],
  "6" => ["Grand Central", "6.33rd", "6.28th", "6.23rd", "Union Square", "Astor"],
  }

  lines = {
    "Times Square" => "N",
    "N.34th" => "N",
    "N.28th" => "N",
    "N.23rd" => "N",
    "Union Square" => "N",
    "N.8th" => "N",
    "L.8th" => "L",
    "L.6th" => "L",
    "Union Square" => "L",
    "L.3rd" => "L",
    "L.1st" => "L",
    "Grand Central" => "6",
    "6.33rd" => "6",
    "6.28th" => "6",
    "6.23rd" => "6",
    "Union Square" => "6",
    "Astor" => "6",
  }

  if current_stop == "Union Square"
    @line_end = lines[destination]
    @line_start = @line_end
  elsif destination == "Union Square"
    @line_start = lines[current_stop]
    @line_end = @line_start
  else
    @line_start = lines[current_stop]
    @line_end = lines[destination]
  end

# Figuring out which index the start and end is. If starting or ending at Union Square, need to find index of Union Square on the oposite start or end line.
if "Union Square" == current_stop
  start = routes[@line_end].index(current_stop)
  finish = routes[@line_end].index(destination)

elsif "Union Square" == destination
  start = routes[@line_start].index(current_stop)
  finish = routes[@line_start].index(destination)

else
  start = routes[@line_start].index(current_stop)
  finish = routes[@line_end].index(destination)
end

if "Union Square" == current_stop || "Union Square" == destination
  if "Union Square" == current_stop
    if start < finish
      @journey = routes[@line_end][start..finish]
    else
      @journey = routes[@line_end][finish..start].reverse
    end
  else # Union Square == destination
    if start < finish
      @journey = routes[@line_start][start..finish]
    else
      @journey = routes[@line_start][finish..start].reverse
    end
  end

elsif @line_start != @line_end # User will have to change lines
  change = routes[@line_start].index("Union Square")
  if start < change
    @journey1 = routes[@line_start][start..change]
  else
    @journey1 = routes[@line_start][change..start].reverse
  end
  @journey1 << "- Change from the #{@line_start} line to the #{@line_end} line at Union Square -"
  change = routes[@line_end].index("Union Square")
  if change < finish
    @journey2 = routes[@line_end][change..finish]
  else
    @journey2 = routes[@line_end][finish..change].reverse
  end

  @journey = @journey1 + @journey2

elsif start < finish # User stays on same line and moves fwd
  @journey = routes[@line_start][start..finish]

else # User stays on same line and moves backwards
  @journey = routes[@line_start][finish..start].reverse
end

  erb :journey_map
end

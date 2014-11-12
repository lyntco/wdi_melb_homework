require 'sinatra'
require 'pry'

get '/' do
  erb :form
end

get '/route' do
  router
  erb :route
end

# consider changin all the name and iterating through the original arrays while putting out HTML options, this helps with maintenance

# Put the 'name' directly in the params. Take out all the
# Perhaps think of changing to text boxes then working out how to use dropdowns

def router

  subway_router = {
  "n" => ["times square", "34th", "n line 28th", "23rd", "union square", "8th"],
  "l" => ["8th", "6th", "union square", "3rd", "1st"],
  "6" => ["grand central", "33rd", "line 6 28th", "23rd", "union square", "astor place"]
}

  # inserts the line got on and off from the HTML form into a local variale
  line_got_on = params["line_got_on"]
  line_get_off = params["line_got_off"]

  # saves the stop on and off to a local variable from the form
  stop_got_on = params["stop_got_on"]
  stop_get_off = params["stop_get_off"]

  # works out the index of the lines on and off
  first_range = subway_router[line_got_on].index(stop_got_on)
  second_range = subway_router[line_got_on].index(stop_get_off)

  # checks the index of the line on or off
  line_on_index = subway_router[line_got_on].index(stop_got_on)
  line_off_index = subway_router[line_get_off].index(stop_get_off)

  # checks unions index on your current line
  union_index_on = subway_router[line_got_on].index("union square")
  union_index_off = subway_router[line_get_off].index("union square")


  # checks if the line you get on at is the same as line got off
  # deals with the cross over and union indexes
  if line_get_off != line_got_on

    # checks if the line you got on index is less than the union index
    if line_on_index < union_index_on

      #checks if the line you get off index is higher than the union index
      if line_off_index > union_index_off

        part1 = subway_router[line_got_on][line_on_index..union_index_on]
        "----------TRANSFER------------"
        part2 = subway_router[line_get_off][union_index_off..line_off_index]

        @route = part1 | part2

      # checks if the line you get off index is less than the union index
      elsif line_off_index < union_index_off

        part1 = subway_router[line_got_on][line_on_index..union_index_on]
        "----------TRANSFER------------"
        part2 = subway_router[line_get_off][line_off_index..union_index_off].reverse

        @route = part1 | part2

      end
    end

    # checks if the line on index is higher than the union index
    if line_on_index > union_index_on

      # checks if the line off index is greter than the union index
      if line_off_index > union_index_off

        part1 = subway_router[line_got_on][union_index_on..line_on_index].reverse
        "----------TRANSFER------------"
        part2 = subway_router[line_get_off][union_index_off..line_off_index]

        @route = part1 | part2

      # checks the line off index is less than the union index
      elsif line_off_index < union_index_off

        part1 = subway_router[line_got_on][union_index_on..line_on_index].reverse
        "----------TRANSFER------------"
        part2 = subway_router[line_get_off][line_off_index..union_index_off].reverse

        @route = part1 | part2

      end
    end
    # if line_got_on > union_index_on

  # For one line trips
  else
    if (first_range < second_range)

    @route = subway_router[line_got_on][first_range..second_range]

    elsif (second_range < first_range)

    @route = subway_router[line_got_on][second_range..first_range].reverse

    end
  end
end
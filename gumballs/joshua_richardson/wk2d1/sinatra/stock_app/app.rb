require 'pry'
require 'sinatra'
require 'YahooFinance'

get '/' do
  @search = params[:search]

  result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @search)

  if @search == nil
    @search = ""
  else
    @stock_results = result[@search.upcase].lastTrade
  end

  erb :index
end

get '/:stock' do
  @search = params[:stock]
  result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @search)

  if @search == nil
    @search = ""
  else
    @stock_results = result[@search.upcase].lastTrade
  end

  erb :show
end

# binding.pry

# require 'sinatra'
# require 'pry'
# require 'yahoofinance'

# get '/' do
#   erb :index
# end

# get '/stocks/:search' do
#   @search = params[:search]

#   if @search == nil
#    @search = ""
#   else
#   result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @search)
#     @stock_results = result[@search].lastTrade
#   end

#   erb :show
# end
require 'pry'
require 'sinatra'
require 'yahoofinance'


# get '/' do

get '/stocks/:stock_id/' do
  "Your stock is #{params[:stock_id]}"

    @stock_id = params[:stock_id]

    # @message = @stock_id

    @temp = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock_id)

    if @stock_id && !@stock_id.empty?
        @result = @temp[@stock_id.upcase].lastTrade
      else

    end

    erb :index

end







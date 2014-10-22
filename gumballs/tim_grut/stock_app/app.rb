require 'pry' # optional
require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

def money
  YahooFinance::get_quotes(YahooFinance::StandardQuote, @check_stock)
  # YahooFinance.historical_quotes(@check_stock, Time::now-(24*60*60*10), Time::now)
end

get '/' do
  @check_stock = params[:check_stock]

  puts "Welcome to WDI Stocks"

  @stock = money


erb :index
end

get '/stocks/:check_stock' do
  @check_stock = params[:check_stock]
    @stock = money
erb :show
end

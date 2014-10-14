
require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
stock_ticker = params[:stock_ticker]

  if @stock_ticker && !@stock_ticker.empty?
    @stock_ticker = @stock_ticker.upcase
    @results = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock_ticker)
    @last_trade = @results[@stock_ticker].lastTrade
  end

  erb :index
end

#If inputted then get result
get '/stocks/:stock_ticker' do


@stock_ticker = params[:stock_ticker]

  if @stock_ticker && !@stock_ticker.empty?
    @stock_ticker = @stock_ticker.upcase
    @results = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock_ticker)
    @last_trade = @results[@stock_ticker].lastTrade
  end

 erb :show

end

get '/about' do

  erb :about
end

require 'pry'
require 'sinatra'
require 'yahoofinance'

get '/' do
  @search = params[:search]
  if @search && !@search.empty?
    result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @search)
    @last_trade = result[@search].lastTrade
    @day_high = result[@search].dayHigh
    @day_low = result[@search].dayLow
    @ask = result[@search].ask
  end
  erb :index
end

get '/stock/:search' do
  @search = params[:search]
  if @search && !@search.empty?
    result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @search)
    @last_trade = result[@search].lastTrade
    @day_high = result[@search].dayHigh
    @day_low = result[@search].dayLow
    @ask = result[@search].ask
  end
 erb :show
end
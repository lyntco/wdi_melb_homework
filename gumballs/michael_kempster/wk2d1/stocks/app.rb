require 'pry'
require 'sinatra'
require 'yahoofinance'

get '/' do
	erb :index
end

get '/stocks' do
	@stock = params[:stock]
	get_stock(@stock)
	erb :index
end

get '/stocks/:stock' do
	@stock = params[:stock]
	get_stock(@stock)
	erb :index
end

def get_stock(stock)
	if stock && !stock.empty?
		if stock.length < 4
			@message = "Stock name too short"
		elsif stock.length > 4
			@message = "Stock name too long"
		else
			price = YahooFinance::get_quotes(YahooFinance::StandardQuote, stock)
			@message = stock
			@message = "The price for #{stock} is #{price[stock.upcase].lastTrade}"
		end
	end
end


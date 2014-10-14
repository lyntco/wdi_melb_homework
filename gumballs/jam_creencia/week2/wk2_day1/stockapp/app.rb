require "sinatra"
require "rerun"
require "yahoofinance"

get "/" do 


		@stock = params[:stock]
		
	if @stock && !@stock.empty?

		@result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)

		@show_stock = @result[@stock]
		

	end

	erb :index

end


require "sinatra"
require "rerun"

get "/" do
	@password = params[:password]
	
if @password && !@password.empty?
	if @password.length < 6
			@message = "too weak"
	else
		@message = "your secret's safe with me"
	end
end

	erb :index
end

get "/about" do 
	erb :about
end


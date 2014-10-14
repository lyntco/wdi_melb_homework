require 'pry'
require 'sinatra'

get '/' do
  @password = params[:password]


   if @password && !@password.empty? # only if password exists & has a langth over 6
     if @password.length < 6
      @message = "too weak"
      else
      @message = "your screts safe with me"
      end
  end


    erb :index
end

get '/about' do
  erb :about
end
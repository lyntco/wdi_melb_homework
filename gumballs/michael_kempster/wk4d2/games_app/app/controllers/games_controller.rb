class GamesController < ApplicationController

	def index
	end

	# def show
	# 	render :magiceightball
	# end

	def magiceightball
		  answers = ["outlook not so good", "cloudy, ask again later", "it is meant to be", "you may rely on it"]
		  @result = answers[Random.rand(4)]
	end

	def secretnumber
		@number = params[:number]
		answers = ["winner", "loser"]
		@secret_number_result = answers[Random.rand(2)]
	end

	def rockpaperscissors
		hands = ["rock", "paper", "scissors"]
		@app_hand = hands[Random.rand(3)]

		if @app_hand == "rock"
			if params[:user_hand] == "paper"
				@rps_hand = "You win!"
			elsif params[:user_hand] == "scissors"
				@rps_hand = "You lose!"
			else
				@rps_hand = "Draw!"
			end
		elsif @app_hand == "paper"
			if params[:user_hand] == "scissors"
				@rps_hand = "You win!"
			elsif params[:user_hand] == "rock"
				@rps_hand = "You lose!"
			else
				@rps_hand = "Draw!"
			end
		else
			if params[:user_hand] == "rock"
				@rps_hand = "You win!"
			elsif params[:user_hand] == "paper"
				@rps_hand = "You lose!"
			else
				@rps_hand = "Draw!"
			end
		end
	end

end

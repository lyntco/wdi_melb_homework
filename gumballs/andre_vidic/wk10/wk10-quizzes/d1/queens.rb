class Queens

	def initialize(params={:white =>[0, 3], :black => [7, 3]})
		raise ArgumentError if params[:white] == params[:black]
		@white = params[:white] 
		@black = params[:black] 
		# raise ArgumentError if @white == @black
	end

	def white
		white = @white
	end

	def black
		black = @black
	end

	def attack?
		case 
		# same column check
		when white[1] == black[1]
			true
			# same row check
		when white[0] == black[0]
			true
		when diagonal_attack?	
			true
		# cannot attack if none of above attacks are true
		else
			false
		end
	end

	def diagonal_attack?
		dx = (white[0]-black[0]).abs
		dy = (white[1]-black[1]).abs
		
		dy == dx
	end

	def to_s

		# test
		# x1 = 2
		# y1 = 4
		# x2 = 6
		# y2 = 6


		# @board = Array.new(8){ Array.new(8) }
		# (0...8).each do |x|
		# 	(0...8).each do |y|
		# 		if x == xi && y == yi

		# 			@board["#{x}#{y}"] = "W "

		# 		else
		# 			@board["#{x}#{y}"] = "0 "
		# 		end
		# 	end
		# end

		# (0...8).each do |x|
		# 	(0...8).each do |y|
		# 		if x == xi && y == yi
		# 			@board << 9
		# 		else
		# 			@board << 0
		# 		end
		# 	end
		# end
		# p @board

		# @board = {}
		# (1..8).each do |x|
		# 	(1..8).each do |y|
		# 		if (x == x1 && y == y1) || (x == x2 && y == y2)
		# 			@board["#{x}#{y}"] = "W "
		# 		else
		# 			@board["#{x}#{y}"] = "O "
		# 		end
		# 	end
		# 	puts
		# end
		# @board

		board = ""
		xwhite = white[0]
		ywhite = white[1]
		xblack = black[0]
		yblack = black[1]

		(0...8).each do |x|
			(0...8).each do |y|
				# if (x == x1 && y == y1)
				if (x == xwhite && y == ywhite)
					board << "W "
					# elsif (x == x2 && y == y2)
				elsif (x == xblack && y == yblack )
					board << "B "
				elsif y < 7
					board << "O "
				else y == 7
					board << "O"
				end
			end
			board << "\n"
		end
		board = board.chomp
		# .tr('^W B  O \n', '')
		# .gsub(/\t/, ' ')
		# board.chomp.strip
		# board = chomp.board.rstrip
		# board = board[0..-2]
	end
end

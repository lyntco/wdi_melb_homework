require 'pry'

class	Phone 

	def initialize(number) 
		@number = number
	end

	def number
		@number = @number.gsub(/\D/, '')


		if @number.length == 10 
			@number

		elsif @number.length == 11 	

			if @number[0] == '1'		
				@number[0] = ''
				@number
			else
				@number[0] = ''
				@number.gsub(/\d/, '0') 
			end


		else 
			@number = '0000000000'

		end



	end


	def area_code
		self.number
		@number.slice(0..2)
	end


	def to_s
		self.number
		@number.insert 0, '('
		@number.insert 4, ')'
		@number.insert 5, ' '
		@number.insert 9, '-'
		
	end


end






require 'pry'
class Allergies

	def initialize(score)
		@score = score
		# if 1 then 2^0=1, which gives eggs, so go to position 0 of allergens array
		# if 2 then 2^1=2, which gives peanuts, so go to position 1 of allergens array
		@allergens = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)
		
		# score array input
		# allergens= {
		# 	1 => 'eggs', #2^0=1
		# 	2 => 'peanuts', #2^1=2
		# 	4 => 'shellfish', #2^2=4
		# 	8 => 'strawberries', #2^3=8
		# 	16 => 'tomatoes', #2^4=16
		# 	32 => 'chocolate', #2^5=32
		# 	64 => 'pollen', #2^6=64
		# 	128 => 'cats' #2^7=128
		# }

		@list = []
	end

	def allergic_to?(input)
		# binding.pry
		index = @allergens.index(input)
		# puts "index:#{2**index}"
		# puts "score:#{@score}"
		# puts "index: #{(2 ** index).to_s(2)}"
		# puts "score: #{@score.to_s(2)}"
		# puts "#{result}"

		if (@score & (2 ** index)) > 0
			return true
		end

		 # binary comparison (& !=0)
		 # number 33 in binary is:
		 # 2^5 2^4 2^3 2^2 2^1 2^0
		 # 32  16  8   4   2   1
		 # 1   0   0   0   0   1
	end

	def list
		@allergens.each do |allergen|
			if allergic_to?(allergen)
				@list << allergen
			end
		end
		puts "list: #{@list}"
		@list
	end
end
allergies = Allergies.new(32)
allergies.allergic_to?("peanuts")
allergies.list

require 'pry'

class Coffee
	attr_accessor :coffee_type, :add_ons, :size, :name

	def initialize(coffee_type, add_ons, size, name)
		@coffee_type = coffee_type
		@add_ons = add_ons
		@size = size
		@name = name
		@order_created = Time.new
		@collected = false

		@name = @name.insert(-1,'hz')

	end

	def to_s 
		puts "#{@name}'s order: #{@coffee_type}, #{@size}, #{@add_ons}"
	end

	def ready?
		@time_now = Time.now
		@ready = @time_now - @order_created
		# binding.pry

		if  @ready >= 120
		puts "#{@name.upcase}'S #{@coffee_type.upcase}!!!"
		@collected = true
		else
		puts "You gotta wait #{120 - @ready.round} seconds!"
		end
	end

	def collected
		if @collected == true
			puts "Cofee collected"
		else
			puts "Cofee NOT collected"
		end
	end

	def self.list_not_collected
		

	end

end

# binding.pry

puts "Welcome to Starbucks. What cofee would you like?"
coffee_type = gets.chomp

puts "What size?"
size = gets.chomp

puts "Any add ons?"
add_ons = gets.chomp

puts "Lastly, what is your name?"
name = gets.chomp

puts "Thanks, your coffee will be ready in 2 minutes."

c1 = Coffee.new(coffee_type,add_ons,size,name)

menu = puts "ACTIONS:\n
0 = check if they got my order right\n
1 = check if my coffee is ready\n
2 = check if my coffee is collected\n
3 = leave coffee shop"
user_action = gets.chomp.to_i

while user_action != 3
	if user_action == 0
		c1.to_s
		
	elsif user_action == 1
		c1.ready?
	elsif user_action == 2
		c1.collected			
	end
	menu
	user_action = gets.chomp.to_i
end
puts "Thanks!"
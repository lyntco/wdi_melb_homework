require 'pry'

class Coffee
	@@all_coffees = [] # This is not usually 

	attr_accessor :collected # Only need this variable back

	def initialize(type, num_sugars, size, name)
		@type = type
		@num_sugars = num_sugars
		@size = size
		@name = name.reverse.next.reverse # Mis-spell the name - increment the first character
		@order_time = Time.now
		@collected = false
		@@all_coffees << self # This is the coffee I am creating and I am assigning it to all coffees
	end

	def collected
		@collected = true
	end

	def is_collected?
		if @collected == true
			puts "Order collected"
		else
			puts "Order not collected yet"
		end
	end

	def self.collected_list
		@@all_coffees.select {|coffee| coffee.collected = true}
	end

	def self.not_collected_list
		@@all_coffees.select {|coffee| coffee.collected = false}
	end

	def ready?
		if (Time.now.min - @order_time.min) > (Random.rand(4) + 2)
			puts "#{@name}\'s #{@type}, #{@size}, #{@num_sugars}"
		else
			puts "Order not ready"
		end
	end

	private

	def to_s # can override existing methods in your class to alter the bahaviour to your needs
		"#{@name}\'s #{@type}, #{@size}, #{@num_sugars}"
	end

end

c1 = Coffee.new('latte','2 sugars','medium','Darryl')

puts c1

c1.ready?
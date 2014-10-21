# https://gist.github.com/lyntco/85caf5d4c5783b0ed76d
# Quiz - Starbucks
# Write a program that holds on to coffee orders.
#
# c1 = Coffee.new('latte','2 sugars','medium','Darryl')
#
# Write the .to_s method for this class so when you puts c1 you will have
# "Darryl's latte, medium, 2 sugars."

class Coffee
    @@orders = []
    def initialize(coffee_type, sugars, strength, name)
      @coffee_type = coffee_type
      @sugars = sugars
      @strength = strength
      @name = name[0..-1] #misspelling, delete last names
      @time_order_min = Time.now.to_i/60
      @wait_time_min = rand(2...5)
      @collected =false
    end

def ready?
  now_min = Time.now.to_i/60
  minutes_since_order = now_min - @time_order_min
  minutes_since_order
end

def orders_collected
  @@orders_collected
end

def orders_waiting
  @@orders_waiting
end

    def to_s
       " #{@name}'s' , #{@coffee_type},  #{@strength}, #{@sugars}"
    end

end

c1 = Coffee.new('latte','2 sugars','medium','Darryl')
puts c1
puts "Darryl's latte, medium, 2 sugars."
sleep(2)
puts c1.ready?

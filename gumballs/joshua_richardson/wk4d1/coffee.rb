require 'pry'

class Coffee
  def initialize(type, sugar, strength, name)
    @type = type
    @sugar = sugar
    @strength = strength
    @name = name
  end

  def to_s
    random_letter = ('A'..'Z').to_a
    "#{random_letter.sample + @name[1..@name.length]}'s #{@type}, #{@strength}, #{@sugar} sugars."
  end
end

binding.pry

c1 = Coffee.new('latte','2 sugars','medium','Darryl')

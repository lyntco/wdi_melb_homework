require 'securerandom'
require 'pry'

class Robot
  attr_accessor :name

  def initialize
    @name = SecureRandom.hex(4).upcase
    @mac_address = SecureRandom.hex(4).upcase
  end

  def reset
    @name = SecureRandom.hex(4).upcase
  end

end

robot1 = Robot.new
robot2 = Robot.new

puts robot1.name
puts robot1.name
puts robot1.reset

binding.pry

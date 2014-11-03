#  https://gist.github.com/lyntco/654771881a1e16b9c5f3

class Robot
  @@MAC = 1
  @@roll=[]
  def self.MAC
    @@MAC
    # puts @@roll
  end
    # MAC = 0
  attr_accessor

  def initialize()
    @instruction_count=1
    @name =  generateName()  #'RX837'
    @creation_date=Time.now.to_i
    @re_boot_time = Time.now.to_i
    @MAC = @@MAC
    @@MAC = @@MAC +1
  end

  def name()
    # self.MAC = self.MAC + 1
    puts "name: #{@name}"
    puts "MAC: #{@MAC}"
    @instruction_count += 1
  end

  def generateName()
    @instruction_count += 1
    # (0...2).map { ('A'..'Z').to_a[rand(26)] }.join + rand(999).to_s
    name=""
    loop do
      name = ('AA'..'ZZ').to_a.sample + rand(999).to_s
      break if !( @@roll.include? name) # make sure name is unique
    end
    @@roll << name
    @name = name
  end

  def reset()
    @instruction_count += 1
    @name =  generateName()
    @re_boot_time = Time.now.to_i
    "Resetting to factory settings."
  end

  def instruction_count()
    puts "Robot #{@MAC} instruction_count: #{@instruction_count}"
  end

  def timers()
    now = Time.now.to_i
    puts "#{now - @re_boot_time} seconds since last boot, #{now - @creation_date} seconds since creation"
  end

  def list_roll()
    puts @@roll
  end


end


# RX837 or BC811

puts "Robot 1:\n------"
robot1 = Robot.new
puts robot1.name
puts robot1.name
sleep(1)
puts robot1.instruction_count()
puts robot1.reset

puts robot1.name
puts robot1.instruction_count()

puts "Robot 2:\n------"
robot2 = Robot.new
puts robot2.name
puts robot2.name
sleep(1.0)
puts robot2.instruction_count()

# puts robot1.timers

puts "Robot 3:\n------"
robot3 = Robot.new
puts "----"

puts robot3.name
puts "MAC----"
Robot.MAC

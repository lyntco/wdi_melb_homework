
class Robot
	attr_accessor :name

	# ('aa000'..'zz999').to_a.select
	def initialize(name = (0...16).map { (65 + rand(26)).chr }.join)
		@name = name
		@counter = 0
		@born = Time.now
		@last_reset = Time.now
	end

	def rename(n)
		@name = n
		@counter += 1
	end

	def reset
		@name = (0...16).map { (65 + rand(26)).chr }.join
		@counter += 1
		@last_reset = Time.now
	end

	def times
		@age = Time.now - @born
		@runtime = Time.now - @last_reset
		puts "#{runtime} since last boot, #{@age} seconds since creation."
	end

end

def intro
	puts "Welcome to the Robot Factory!"
	puts ""
	puts "Following are the possible operation commands:"
	puts "1) Create a robot"
	puts "2) Rename a robot"
	puts "3) Reset a robot"
	puts "4) Print all robot names"
	puts "0) Exit the program"
	puts ""
end

def get_command(str)
	puts str
	return gets.chomp
end

command_str = "Please enter a number for the relevant command:"
command_invalid = "Sorry, you need to enter a valid command, please try again."

robots = []

intro
command = get_command(command_str)

while command != "0"
	case command
	when "1"
		my_robot = Robot.new
		robots << my_robot
		puts my_robot.name
		puts my_robot.name
		puts my_robot.name
		command = get_command(command_str)
	when "2"
		puts "Please enter the robot number:"
		number = gets.chomp.to_i
		number -= 1
		puts "Please enter the new robot name:"
		robot_name = gets.chomp
		robots[number].rename(robot_name)
		puts robots[number].name
		puts robots[number].name
		puts robots[number].name
		command = get_command(command_str)
	when "3"
		puts "Please enter the robot number:"
		number = gets.chomp.to_i
		number -= 1
		puts "Resetting to factory settings..."
		robots[number].reset
		puts robots[number].name
		puts robots[number].name
		command = get_command(command_str)
	when "4"
		puts "Printing all robot names:"
		robots.each { |instance| puts instance.name }
		command = get_command(command_str)
	else
		puts command_invalid
		command = get_command(command_str)
	end
end

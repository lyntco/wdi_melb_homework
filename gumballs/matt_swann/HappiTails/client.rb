class Client
  attr_accessor :name, :age, :gender, :children, :num_pets
 
  def initialize (name, age, gender, children, num_pets)
    @name = name
    @age = age
    @gender = gender
    @Children = children
    @num_pets = num_pets
  end


  def to_s
    puts "#{@name.capitalize} is a #{@age} year-old #{@gender} who has #{@children} child(ren) and #{@num_pets} animal(s)."
  end

end
#matt = Client.new("Matt", 35, 0, 2)


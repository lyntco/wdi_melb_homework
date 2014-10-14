class Person

  def initialize(name,age,gender)
    @name = name
    @age = age
    @gender = gender
  end

  # def name
  #   @name
  # end

  # def name=(name)
  #   @name = name
  # end
  def reverse_the_name
    @name = @name.split("").reverse.join
  end

end

bob = Person.new('bobington', 89, 'm')

p bob
# p bob.name
# bob.name = "Jenny"
# p bob.name

bob.reverse_the_name

p bob
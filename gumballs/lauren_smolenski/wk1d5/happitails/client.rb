class Client
  attr_accessor :name, :number_of_children, :age, :number_of_pets, :animals
  def initialize(client_details)
    @name = client_details[:name]
    @number_of_children = client_details[:number_of_children]
    @age = client_details[:age]
    @number_of_pets = client_details[:number_of_pets]
    @animals = []

  end

  def to_s
    puts "#{@name} is a client."
  end
end


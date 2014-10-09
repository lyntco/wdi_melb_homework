class Client
  attr_accessor :name, :num_of_children, :age, :num_of_pets

  def initialize(client_details)
    @name = client_details[:name]
    @num_of_children = client_details[:num_of_children]
    @age = client_details[:age]
    @num_of_pets = []
  end

  def to_s
    "#{@name}"
  end

end

# client_details = {
#   name: "Laura Mossman",
#   num_of_children: 10,
#   age: 36
# }

# # laura = Client.new(client_details)

# # p laura.age
# # p laura.num_of_children
# # p laura.name
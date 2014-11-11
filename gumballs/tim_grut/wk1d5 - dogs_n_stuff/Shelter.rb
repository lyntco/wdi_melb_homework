class Shelter
  attr_accessor :address, :has_elevator, :has_doorman, :apartments, :number_of_floors
  def initialize(shelter_details)
    @address = shelter_details[:address]
    @has_elevator = shelter_details[:has_elevator]
    @has_doorman = shelter_details[:has_doorman]
    @number_of_floors = shelter_details[:number_of_floors]
    @clients = shelter_details[:clients]
  end
end





# b1_details= {
# :address => "123 fake St",
# :has_elevator => false,
# :has_doorman => false,
# :apartments => 20,
# :number_of_floors => 999
# }

# b1 = Shelter.new(b1_details)
# p b1.has_elevator


# class Shelter
#   attr_accessor :address, :has_elevator, :has_doorman, :apartments, :number_of_floors
#   def initialize(shelter_details)
#     @address = shelter_details[:address]
#     @has_elevator = shelter_details[:has_elevator]
#     @has_doorman = shelter_details[:has_doorman]
#     @number_of_floors = shelter_details[:number_of_floors]
#     @apartments = shelter_details[:apartments]
#   end
# end

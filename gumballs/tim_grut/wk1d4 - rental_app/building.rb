class Building
  attr_accessor :address, :has_elevator, :has_doorman, :apartments, :number_of_floors
  def initialize(building_details)
    @address = building_details[:address]
    @has_elevator = building_details[:has_elevator]
    @has_doorman = building_details[:has_doorman]
    @number_of_floors = building_details[:number_of_floors]
    @apartments = building_details[:apartments]
  end
end





# b1_details= {
# :address => "123 fake St",
# :has_elevator => false,
# :has_doorman => false,
# :apartments => 20,
# :number_of_floors => 999
# }

# b1 = Building.new(b1_details)
# p b1.has_elevator



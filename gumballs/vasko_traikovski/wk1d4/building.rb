class Building
  attr_accessor :address, :num_floors, :apartments, :has_doorman, :has_elevator

  def initialize( building_details)
    @address       = building_details[:address]
    @num_floors    = building_details[:num_floors]
    @has_doorman   = building_details[:has_doorman]
    @has_elevator  = building_details[:has_elevator]
    @apartments    = []
  end
end

#b1 = Building.new(building_details)
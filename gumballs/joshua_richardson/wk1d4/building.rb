class Building
  attr_accessor :address, :has_elevator, :has_doorman, :apartments, :number_of_floors

  def initialize(building_details)
    @has_elevator = building_details[:has_elevator],
    @has_doorman = building_details[:has_doorman],
    @number_of_floors = building_details[:number_of_floors],
    @apartments = []
    @address = building_details[:address]
  end

  def to_s
    "#{@address}"
  end

end

# building_details = {
#   address: "123 Fake st",
#   has_doorman: true,
#   has_elevator: true,
#   number_of_floors: 199
# }

# b1 = Building.new(building_details)
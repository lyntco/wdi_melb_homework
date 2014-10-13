class Center
  attr_accessor :town, :pokemon_housed, :nurse, :registered_trainers, :heals_to_date

  def initialize(center_details)
    @town = center_details [:town]
    @pokemon_housed = center_details [:pokemon_housed]
    @nurse = center_details [:nurse]
    @registered_trainers = center_details[:registered_trainers]
    @heals_to_date = center_details [:heals_to_date]
  end
end



# b1_details = {
#   :town => "Cerulean",
#   :pokemon_housed => "Jigglypuff",
#   :nurse => Jenny,
#   :registered_trainers => [Bob],
#   :heals_to_date => 212
# }

# cerulean = Building.new(b1_details)

# p cerulean.has_elevator
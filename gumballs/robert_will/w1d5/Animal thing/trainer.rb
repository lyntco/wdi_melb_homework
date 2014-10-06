class Trainer
  attr_accessor :name, :age, :pokemon_owned, :town, :badgesz
  def initialize(trainer_details)
    @name = trainer_details [:name]
    @age = trainer_details [:age]
    @pokemon_owned = trainer_details [:pokemon_owned]
    @town = trainer_details [:town]
    @badges = trainer_details [:badges]
  end

end

# trainer_details = {
#   :name => Brock,
#   :age => 23,
#   :pokemon_owned => onix, geodude
#   :town => veridian_city,
#   :badges => boulder
# }

# t1 = Trainer.new(trainer_details)

# p t1.pokemon_owned
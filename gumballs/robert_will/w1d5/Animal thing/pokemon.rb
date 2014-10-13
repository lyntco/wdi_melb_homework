class Pokemon
  attr_accessor :name, :type, :gender, :trainer

  def initialize(pokemon_details)
    @name = pokemon_details [:name]
    @type = pokemon_details [:type]
    @gender = pokemon_details [:gender]
    @trainer = pokemon_details [:trainer]
  end

end

# charmander_details = {
#   :type => fire,
#   :name => "charmander",
#   :trainer => "Ash",
#   :gender => "Male"
# }

# charmander = Pokemon.new(pokemon_details)

# p charmander.name
# p jenny.type
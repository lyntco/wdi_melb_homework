class Shelter
  attr_accessor :name, :animals, :clients, :display_animals

  def initialize(shelter_details)
    @name = shelter_details[:name]
    @animals = []
    @clients = []
  end

  def to_s
    "#{@name}"
  end

  def display_animals
    "#{@animals.each do |animal| animal.name end }"
  end

end



# details = {
#   name: "Doggie central"
# }

# doggie_g = Shelter.new(details)

# p doggie_g.name


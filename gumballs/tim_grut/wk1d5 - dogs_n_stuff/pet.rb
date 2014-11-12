class Pet
  attr_accessor :name, :age, :gender, :species, :multiple_toys
  def initialize(pet_details)
    @name = pet_details[:name]
    @age = pet_details[:age]
    @gender = pet_details[:gender]
    @species = pet_details[:species]
    @multiple_toys = pet_details[:multiple_toys]
  end
end


# jenny_details= {
# :name => "Jenny",
# :age => 89,
# :gender => "Male",
# :occupation => "Works on the bloc",
# :is_funny => false,
# }

# jenny =Tenant.new(jenny_details)

# p jenny.name
# p jenny.is_funny
class Tenant
  attr_accessor :name, :age, :gender, :occupation, :is_funny
  def initialize(tenant_details)
    @name = tenant_details[:name]
    @age = tenant_details[:age]
    @gender = tenant_details[:gender]
    @is_funny = tenant_details[:is_funny]
    @occupation = tenant_details[:occupation]
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
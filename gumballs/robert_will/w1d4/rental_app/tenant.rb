class Tenant
  attr_accessor :name, :age, :gender, :occupation, :is_funny

  def initialize(tenant_details)
    @name = tenant_details [:name]
    @age = tenant_details [:age]
    @gender = tenant_details [:gender]
    @occupation = tenant_details [:occupation]
  end

end

# jenny_details = {
#   :age => 89,
#   :name => "jenny",
#   :occupation => "Works on the block",
#   :gender => "Male",
#   :is_funny => false
# }

# jenny = Tenant.new(jenny_details)

# p jenny.name
# p jenny.is_funny
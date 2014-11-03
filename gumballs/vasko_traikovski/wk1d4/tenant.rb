class Tenant
  attr_accessor :name, :age, :gender, :occupation, :is_funny

  def initialize(tenant_details)
    @name       = tenant_details[:name]
    @age        = tenant_details[:age]
    @gender     = tenant_details[:gender]
    @occupation = tenant_details[:occupation]
    @is_funny   = tenant_details[:is_funny]
  end
end

# jenny_details = {
#   :name       => "Jenny",
#   :age        => 89,
#   :gender     => "Male",
#   :occupation => "Works on the block",
#   :is_funny   => false
# }

# p jenny = Tenant.new(jenny_details)
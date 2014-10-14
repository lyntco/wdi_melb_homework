class Tenant
  attr_reader :gender
  attr_accessor :name, :age, :gender, :occupation, :is_funny

  def initialize(tenant_details)
    @name = tenant_details[:name]
    @age = tenant_details[:age]
    @gender = tenant_details[:gender]
    @occupation = tenant_details[:occupation]
    @is_funny = tenant_details[:is_funny]
  end

  def to_s
    puts "#{@name} is a #{gender} tenant."
  end


end

# jenny_details = {
#   :name => "Jenny",
#   :age => 89,
#   :gender => "Male",
#   :occupation => "Works on the block",
#   :is_funny => false,
# }

# jenny = Tenant.new(jenny_details)

# p jenny.name
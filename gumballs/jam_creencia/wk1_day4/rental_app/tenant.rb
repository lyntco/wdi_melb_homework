class Tenant
	attr_accessor :name, :age, :gender, :occupation

	def initialize(tenant_details)
		@name = tenant_details[:name]
		@age = tenant_details[:age]
		@gender = tenant_details[:gender]
		@occupation = tenant_details[:occupation]
	end


def to_s
	puts ">#{@name} is a #{@age} year old #{@gender} who works as a #{@occupation}."
end

end







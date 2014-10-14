class Tenant
	attr_accessor :name, :age, :gender, :occupation, :lives_at_apt

	def initialize(tenant_details)
		@name = tenant_details[:name]
		@age = tenant_details[:age]
		@gender = tenant_details[:gender]
		@occupation = tenant_details[:occupation]
		@lives_at_apt = lives_at_apt || "-"
	end


def to_s
	print ">#{@name} is a #{@age} year old #{@gender} who works as a #{@occupation}. Lives at Unit #{lives_at_apt}"
end

end







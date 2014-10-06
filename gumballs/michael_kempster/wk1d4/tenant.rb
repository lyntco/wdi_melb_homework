class Tenant
	attr_accessor :name, :age, :occupation, :gender, :is_funny

	def initialize(tenant_details)
		@name = tenant_details[:name]
		@age = tenant_details[:age]
		@occupation = tenant_details[:occupation]
		@gender = tenant_details[:gender]
		@is_funny = tenant_details[:is_funny]
	end

	def to_strings
		puts "The name of the tenant is: #{@name}"
		puts "The age of the tenant is #{@age}"
		puts "The gender of the tenant is: #{@gender}"
		puts "The occupation of the tenant is: #{@occupation}"
		puts "Is the tenant funny: #{@is_funny}"
		puts ""
	end

end

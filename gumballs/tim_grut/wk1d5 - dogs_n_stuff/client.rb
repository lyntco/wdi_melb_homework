class Client
  attr_accessor :pets, :client_name, :client_age, :kids_number, :number_pets
  def initialize(client_details)
    @pets = client_details[:pets]
    @client_name = client_details[:client_name]
    @client_age = client_details[:client_age]
    @kids_number = client_details[:kids_number]
    @number_pets = client_details[:number_pets]
  end
end


# sevenhundrednseven_details= {
# :tenants => 707,
# :room_number => 89,
# :number_bedrooms => 1,
# :number_bathrooms => 20,
# :has_parking => true,
# }

 # =Tenant.new(jenny_details)


# ORIGINALS

# class Client
#   attr_accessor :tenants, :room_number, :number_bedrooms, :number_bathrooms, :has_parking
#   def initialize(client_details)
#     @tenants = client_details[:tenants]
#     @room_number = client_details[:room_number]
#     @number_bedrooms = client_details[:number_bedrooms]
#     @has_parking = client_details[:has_parking]
#     @number_bathrooms = client_details[:number_bathrooms]
#   end
# end
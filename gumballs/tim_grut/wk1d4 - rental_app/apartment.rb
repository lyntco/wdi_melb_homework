class Apartment
  attr_accessor :tenants, :room_number, :number_bedrooms, :number_bathrooms, :has_parking
  def initialize(apartment_details)
    @tenants = apartment_details[:tenants]
    @room_number = apartment_details[:room_number]
    @number_bedrooms = apartment_details[:number_bedrooms]
    @has_parking = apartment_details[:has_parking]
    @number_bathrooms = apartment_details[:number_bathrooms]
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

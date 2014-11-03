class Apartment
  attr_accessor :room_number, :num_bedrooms, :num_bathrooms, :has_parking, :tenants

  def initialize( apartment_details)
    @room_number   = apartment_details[:room_number]
    @num_bedrooms  = apartment_details[:num_bedrooms]
    @num_bathrooms = apartment_details[:num_bathrooms]
    @has_parking   = apartment_details[:has_parking]
    @tenants       = []
  end
end


#a1 = Apartment.new(apartment_details)
class Apartment
  attr_accessor :tenants, :room_number, :number_bedrooms, :number_bathrooms, :has_parking

  def initialize(apartment_details)
    @room_number = apartment_details[:room_number]
    @number_bathrooms = apartment_details[:number_bathrooms]
    @number_bedrooms = apartment_details[:number_bedrooms]
    @has_parking = apartment_details[:has_parking]
    @tenants = []
  end

  def to_s
    "#{@room_number}"
  end

end

# apartment_details = {
#   room_number: 707,
#   number_bedrooms: 2,
#   number_bathrooms: 2,
#   has_parking: true,
#   tenants: []
# }

# puts a1 = Apartment.new(apartment_details[:room_number])

# p a1.room_number
# p a1.tenants
# p a1.has_parking
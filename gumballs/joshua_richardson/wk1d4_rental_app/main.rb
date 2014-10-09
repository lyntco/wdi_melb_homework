require 'pry'
require_relative 'Tenant'
require_relative 'apartment'
require_relative 'building'

jenny_details = {
  name: "Jenny",
  age: 89,
  gender: "Male",
  occupation: "Works on the block",
  is_funny: false
}

jenny = Tenant.new(jenny_details)

p jenny.name

apartment_details = {
  room_number: 707,
  number_bedrooms: 2,
  number_bathrooms: 2,
  has_parking: true,
  tenants: []
}

a1 = Apartment.new(apartment_details)

# Pushes an object, named 'jenny' of the tenant class into the array
a1.tenants << jenny

p a1.tenants

binding.pry
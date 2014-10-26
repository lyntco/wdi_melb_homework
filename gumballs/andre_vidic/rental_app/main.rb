# THIS IS MAIN.RB
# require 'pry'
require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

jenny_details = {
  :name => 'Jenny',
  :age => 89,
  :gender => 'Male',
  :occupation => 'Works on the block',
  :is_funny => false
}

jenny = Tenant.new(jenny_details)

apartment_details = {
  :room_number => 707,
  :number_bedrooms => 1,
  :number_bathrooms => 20,
  :has_parking => true
}

a1 = Apartment.new(apartment_details)

# binding.pry

def menu
	puts "=========================="
	puts "Welcome to the rental app"
	puts "=========================="

	puts "What would you like to do?"
	puts "Enter 1 to: Add a tenant"
	puts "Enter 2 to: Add an apartment"	
	puts "Enter 3 to: Add a building"
	puts "Enter 4 to: List apartments"
	puts "Enter 5 to: List buildings"
	puts "Enter 6 to: List tenants"



end

menu

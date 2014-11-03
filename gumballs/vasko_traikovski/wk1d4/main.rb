require 'pry'

require_relative 'tenant.rb'
require_relative 'apartment.rb'
require_relative 'building.rb'

locations = []

#   http://veerasundaravel.wordpress.com/2010/10/26/string-to-boolean-conversion-in-ruby/
def boolean(string)
  return true   if string== true                  || string =~ (/(true|t|yes|y)$/i)
  return false  if string== false || string.nil?  || string =~ (/(false|f|no|n)$/i)
end

def show_menu

  puts "---"
  puts "Menu"
  puts "---"
  puts "1)  Add tenant"
  puts "2)  Add apartment"
  puts "3)  Add building"
  puts "---"
  puts "4)  List tenant"
  puts "5)  List apartment"
  puts "6)  List building"
  puts "---"
  puts "7)  EXIT"
  puts "---"
  ret =gets.to_i
  return  ret
end

locations = []
#   locations -> building -> apartment -> tenant

building_details = {
    :address       => "10 address",
    :num_floors    => 5,
    :has_doorman   => false,
    :has_elevator  => false,
    :apartments    => []
}

building_details2 = {
    :address       => "10 address",
    :num_floors    => 5,
    :has_doorman   => false,
    :has_elevator  => false,
    :apartments    => []
}

apartment_details = {
  :room_number     => 707,
  :num_bedrooms    => 1,
  :num_bathrooms   => 1,
  :has_parking     => true
}

jenny_details = {
  :name       => "Jenny",
  :age        => 89,
  :gender     => "Male",
  :occupation => "Works on the block",
  :is_funny   => false
}

jenny     = Tenant.new(     jenny_details    )
flat1     = Apartment.new(  apartment_details)
flat2     = Apartment.new(  apartment_details)
build1    = Building.new(   building_details )
build2    = Building.new(   building_details2 )

# flat1.tenants << jenny
# flat2.tenants << jenny
# build1.apartments << flat1
# build2.apartments << flat2
locations << build1
# locations << build2

# locations[0].apartments.flat1.tenants
p locations[0]
binding.pry

def getData(details)
  puts "Enter numbers or true/false"
  details.each { |key, value|
  puts "Enter: #{key.to_s.gsub!('_',' ')} "
  # puts "#{key}:#{value}"
  #p (!!value == value)? "boolean" : "number"
  a = gets
  a = ( boolean(a) )? boolean(a) : a.to_i # boolean : number
  p (!!a == a)? "boolean" : "number"
  }
end



#   welcome to rental appartments

#     add tenant
#     add apartment
#     add building
#     list apartment
#     list buildings
#     list tenants
=begin
name,age,occupation
=end




ans=0


case ans
when 1
  puts 1
when 2
  puts 2
when 3
  puts 3
when 4
  puts 4
when 5
  puts 5
when 6
  puts 6
when 7
  puts 7
else
  puts "choose a number between 1 - 6"
end








require 'pry'
require 'pry-byebug'

def i_love_cake
  puts "cake and more cake"
end

binding.pry

puts 'muffin'

favourite = 'pudding'

puts 'cupcakes'

puts 'pudding'

i_love_cake()

lunch = 'muffin cupcakes pudding'.split(" ")

lunch.each do |l|
  puts "todays lunch is #{l}"
end


smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'strawberries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}



def blend(smoothie_ingredients)
	smoothie_ingredients.keys.join.delete(" ").split("").shuffle.join
end


# puts "The resulting smoothie is: \n #{blend(smoothie_ingredients)} \n"




# BLENDER CLASS



class Blender
		attr_accessor :on, :off

		def initialize(blender_details)
			@on = blender_details[:on]
			@off = blender_details[:off]
		end

end

blender_details ={
	:on => blend(smoothie_ingredients),
	:off => "Blender is not doing anything."
}


blender1 = Blender.new(blender_details)




#PROGRAM STARTS
puts "We can make a smoothie for you with the following ingredients:

"

puts smoothie_ingredients.keys.join(", ")

puts "\nWould you like to turn the blender on? (y/n)"
power = gets.chomp.downcase

if power == "y"
	puts "\nHere's your smoothie: \n#{blender1.on}"
else
	puts blender1.off
end




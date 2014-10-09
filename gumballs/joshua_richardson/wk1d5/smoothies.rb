# require 'pry'
class Blender
  attr_accessor :blend



  # def blend(smoothie_ingredients)
  #     array_convert = smoothie_ingredients.scan /\w/
  #     shuffle_array = array_convert.shuffle
  #     return shuffle_array.join
  # end

end


# Every Morning I make a smoothie with the follow ingredients:
$smoothie_ingredients = {
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
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

def blend
  $smoothie_ingredients.keys.join.split(//).shuffle.join.delete(' ')
end

p blend

# smoothie = Blender.new
# puts smoothie.blend(smoothie_ingredients.keys)








# binding.pry




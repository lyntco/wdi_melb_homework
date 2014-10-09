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
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}


# require 'pry'
class Blender
  attr_accessor :blend

  def initialize(on_off=false)
    @on_off = on_off
  end

  def switch_blender_on
    @on_off = true
  end

  def blend(ingredients)
    if @on_off == false
      puts "You need to switch on the blender."
    else
    ingredients.keys.join.split("").shuffle.join.delete(' ')
    end
  end
end


blend1 = Blender.new
blend1.switch_blender_on

puts blend1.blend(smoothie_ingredients)


# binding.pry

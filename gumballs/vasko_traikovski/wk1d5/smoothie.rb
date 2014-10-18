
=begin
Write a function called blend.

It should take all the smoothie ingredients (not the measurements)
and chop up and mix all the characters and output a mixed string of characters
Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!
=end

smoothie_ingredients = {
  'flax seeds'      => '1 tbsp',
  'chia seeds'      => '1 tbsp',
  'coconut flakes'  => '1 tbsp',
  'spirulina'       => '1 tsp',
  'pumpkin seeds'   => '1 tbsp',
  'oatmeal'         => '1/4 cup',
  'coco powder'     => '1 tbsp',
  'peanut butter'   => '1 tbsp',
  'almonds'         => '1/4 cup',
  'walnuts'         => '1/4 cup',
  'spinach'         => '1/4 cup',
  'greek yogurt'    => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus'       => '1/4 cup',
  'kale'            => '1/4 cup',
  'brocoli rabe'    => '1/4 cup',
  'blue berries'    => '1/4 cup',
  'chopped banana'  => '1/2 cup',
  'straw berries'   => '1/4 cup',
  'mango'           => '1/4 cup',
  'hemp milk'       => '1 cup'
}


def remove_space(str)
  str.gsub(/\s+/, "")
end

class Blender

  def initialize(ingredients)
    @ingredients = ingredients
    @result      = ''
    @switch      = false
  end

  def blend
    if @switch==true
      @ingredients.each{|x,y| @result += remove_space(x).split("").shuffle.join  }
      return @result
    else
      "blender is off"
    end
  end

  def safety_switch
    @switch = !@switch
  end

end

drink = Blender.new(smoothie_ingredients)
#drink.safety_switch
p drink.blend()



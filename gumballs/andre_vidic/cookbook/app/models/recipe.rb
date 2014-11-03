class Recipe < ActiveRecord::Base
  belongs_to :book
  has_and_belongs_to_many :ingredients

  def self.meal_types
    %w(Breakfast Lunch Dinner Snack Dessert)
  end

end

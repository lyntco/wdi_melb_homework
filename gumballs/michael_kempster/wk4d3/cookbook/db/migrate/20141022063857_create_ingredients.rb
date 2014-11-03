class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :measurement
      t.integer :cost
      t.string :image_url

      t.timestamps
    end
  end
end

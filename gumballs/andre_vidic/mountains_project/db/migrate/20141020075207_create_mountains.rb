class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.string :image_url
      t.integer :height

      t.timestamps
    end
  end
end

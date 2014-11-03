class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.string :image_url
      t.integer :elevation_meters
      t.string :country
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end

class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.string :elevation
      t.string :location
      t.string :range
      t.string :image

      t.timestamps
    end
  end
end

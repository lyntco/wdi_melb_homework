class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.string :height
      t.string :image_url

      t.timestamps
    end
  end
end

class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.string :height
      t.string :country
      t.string :range
      t.string :comments

      t.timestamps
    end
  end
end

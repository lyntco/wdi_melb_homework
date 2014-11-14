class CreateInredients < ActiveRecord::Migration
  def change
    create_table :inredients do |t|
      t.string :name

      t.timestamps
    end
  end
end

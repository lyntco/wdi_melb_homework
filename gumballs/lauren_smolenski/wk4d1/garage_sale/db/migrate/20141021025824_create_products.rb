class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, :required => true
      t.decimal :price, :precision => 10, :scale => 2 #scale should be decimal places
      t.string :category

      t.timestamps
    end
  end
end

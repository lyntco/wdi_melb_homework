class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :magiceightball
      t.integer :secretnumber
      t.string :rockpaperscissors

      t.timestamps
    end
  end
end

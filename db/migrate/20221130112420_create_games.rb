class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.float :price
      t.string :description
      t.integer :like

      t.timestamps
    end
  end
end

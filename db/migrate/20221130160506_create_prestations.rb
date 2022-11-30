class CreatePrestations < ActiveRecord::Migration[7.0]
  def change
    create_table :prestations do |t|
      t.string :ClientName
      t.date :Date
      t.string :Description

      t.timestamps
    end
  end
end

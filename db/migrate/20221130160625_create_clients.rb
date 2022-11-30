class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :Name
      t.string :Email
      t.integer :PhoneNumber
      t.string :Description

      t.timestamps
    end
  end
end

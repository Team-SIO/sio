class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :ship
      t.string :zip
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

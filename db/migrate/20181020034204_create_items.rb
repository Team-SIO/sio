class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :item_title
      t.text :item_info
      t.integer :price
      t.references :artist, foreign_key: true
      t.integer :stock

      t.timestamps
    end
  end
end

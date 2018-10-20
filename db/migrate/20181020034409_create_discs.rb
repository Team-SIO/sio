class CreateDiscs < ActiveRecord::Migration[5.2]
  def change
    create_table :discs do |t|
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end

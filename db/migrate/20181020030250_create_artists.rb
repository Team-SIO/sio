class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.references :genre, foreign_key: true
      t.references :label, foreign_key: true
      t.string :artist_name
      t.text :artist_info

      t.timestamps
    end
  end
end

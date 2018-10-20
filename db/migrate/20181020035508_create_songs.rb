class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song_title
      t.string :time
      t.references :disc, foreign_key: true

      t.timestamps
    end
  end
end

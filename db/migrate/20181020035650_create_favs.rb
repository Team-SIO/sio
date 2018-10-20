class CreateFavs < ActiveRecord::Migration[5.2]
  def change
    create_table :favs do |t|
      t.integer :fav_count
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class AddNameToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :genre_name, :string
  end
end

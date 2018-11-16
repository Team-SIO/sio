class AddFavsCountToFavs < ActiveRecord::Migration[5.2]
  def change
  	add_column :favs, :favs_count, :integer
  end
end

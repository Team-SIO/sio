class RemoveColumnFromFavs < ActiveRecord::Migration[5.2]
  def change
    remove_column :favs, :fav_count, :integer
  end
end

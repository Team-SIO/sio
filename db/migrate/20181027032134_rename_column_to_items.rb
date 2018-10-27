class RenameColumnToItems < ActiveRecord::Migration[5.2]
  def change
  	rename_column :items, :item_title, :item_name
  	rename_column :discs, :disc_list, :disc_order
  	rename_column :songs, :song_list, :song_order
  	rename_column :songs, :song_title, :song_name
  end
end

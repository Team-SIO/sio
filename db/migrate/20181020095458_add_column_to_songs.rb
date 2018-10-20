class AddColumnToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :song_list, :integer
    add_index :songs, :song_list
  end
end

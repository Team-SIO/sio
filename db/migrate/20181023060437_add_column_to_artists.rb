class AddColumnToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :admin_id, :integer
  end
end

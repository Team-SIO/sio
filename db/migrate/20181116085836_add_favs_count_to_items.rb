class AddFavsCountToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :favs_count, :integer
  end
end

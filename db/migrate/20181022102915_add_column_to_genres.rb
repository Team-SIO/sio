class AddColumnToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :status, :integer
  end
end

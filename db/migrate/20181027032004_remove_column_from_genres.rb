class RemoveColumnFromGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :status, :string
  end
end

class AddColumnToDiscs < ActiveRecord::Migration[5.2]
  def change
    add_column :discs, :disc_list, :integer
    add_index :discs, :disc_list
  end
end

class RemoveColumnFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :phone, :string
    remove_column :users, :zip, :string
    remove_column :users, :address, :string
  end
end

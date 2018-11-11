class Orders < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :item_name, :string
    add_column :order_items, :item_info, :text
    add_column :order_items, :price, :integer
  end
end


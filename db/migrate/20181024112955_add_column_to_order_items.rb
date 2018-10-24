class AddColumnToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :order_price, :integer
    add_column :order_items, :order_item_count, :integer
  end
end

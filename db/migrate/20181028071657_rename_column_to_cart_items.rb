class RenameColumnToCartItems < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cart_items, :amount, :cart_item_count
  end
end

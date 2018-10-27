class AddShipToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :ship, :text
  end
end

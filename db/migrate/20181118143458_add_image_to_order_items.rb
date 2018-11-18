class AddImageToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :image, :string
  end
end

class OrdersController < ApplicationController

  def index
    @orders = current_user.orders.all


  end

  def show
  end
  def create
    order = Order.new(order_params)
    if order.save
      redirect_to thanks_path
    end
    cart_items = current_user.cart.cart_items
    cart_items.each do |c| 
      order_item = OrderItem.new
      order_item.order_id = order.id
      order_item.item_id = c.item_id
      order_item.item_name = c.item.item_name
      order_item.item_info = c.item.item_info
      order_item.price = c.item.price
      order_item.order_item_count = c.cart_item_count
      order_item.save
      c.destroy
    end
  end

  private
  def order_params
    params.permit(:user_id)
  end
end
#  id              :integer          not null, primary key
#  cart_id         :integer
#  item_id         :integer
#  cart_item_count :integer
#  created_at      :datetime         not null
#  updated_at      :datetime      
class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders.all
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end
  def create
    order = Order.new(order_params)
    if order.save
      redirect_to thanks_path(order)
       NotificationMailer.send_confirm_to_user(current_user,order).deliver
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
      c.item.stock = c.item.stock - c.cart_item_count
      c.item.save
      c.item.stock_kanri
      c.destroy
    end

  end

  def thanks
    @order = Order.find(params[:order_id])
  end

  private
  def order_params
    params.permit(:user_id, :id, :status, :address_id)
  end
end
#  id              :integer          not null, primary key
#  cart_id         :integer
#  item_id         :integer
#  cart_item_count :integer
#  created_at      :datetime         not null
#  updated_at      :datetime      
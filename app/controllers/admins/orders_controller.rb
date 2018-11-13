class Admins::OrdersController < ApplicationController
	before_action :set_order, only: [:show, :edit, :update, :destroy]
	PER = 8
	layout "admin"
  def index
  	 @orders = Order.page(params[:page]).per(PER)
  end

  def show 
  	
  end

  def edit
  end

  def update
  	if @order.update(order_params)
  		redirect_to admins_orders_path
  	else
  		render "edit"
  	end
  end

  def destroy
  	if @order.destroy
  		redirect_to admins_orders_path
  	else
  		render "edit"
  	end
  end

  def undispatched
  	@orders = Order.undispatched.page(params[:page]).per(PER)
  end

  def dispatched
  	@orders = Order.dispatched.page(params[:page]).per(PER)
  end

  private
  def set_order
  	@order = Order.find(params[:id])
  end

  def order_params
  	params.require(:order).permit(:user_id, :ship, :status)
  end
end

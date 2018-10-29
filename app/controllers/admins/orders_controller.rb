class Admins::OrdersController < ApplicationController
	PER = 8
	layout "admin"
  def index
  	 @orders = Order.page(params[:page]).per(PER)
  end

  def undispatched
  	@orders = Order.where(status: 0).page(params[:page]).per(PER)
  end
  def dispatched
  	@orders = Order.where(status: 1).page(params[:page]).per(PER)
  end
end

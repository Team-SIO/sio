class CartsController < ApplicationController
	before_action :authenticate_user!, :validate_cart!

	def show
		@cart = current_user.cart
		@cart_items = @cart.cart_items
		@items = @cart_items.pluck(:item)
		@total_price = @cart_items.joins(:item).sum(:price)
		

	end

	def create
		cart = current_user.cart
		cart_item = CartItem.new(cart_item_params)
		if cart_item.save
			redirect_to cart_path(cart)
		end
	end
	def destroy
		cart = current_user.cart
		cart_item = CartItem.find(params[:cart_item][:id])
		cart_item.destroy
		redirect_to cart
	end

	private
	def cart_item_params
		params.require(:cart_item).permit(:cart_id,:item_id,:cart_item_count)
	end

	def validate_cart!
		@cart = current_user.cart
		@params_cart = Cart.find(params[:id])
		redirect_to @cart if @params_cart != @cart
	end

end

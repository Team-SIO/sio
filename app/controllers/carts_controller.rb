class CartsController < ApplicationController
	before_action :authenticate_user!

	def show
		@cart = current_user.cart
		@cart_items = @cart.cart_items
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

end

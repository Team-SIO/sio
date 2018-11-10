class CartsController < ApplicationController
	# before_action :setup_cart_item!, only: [:add_item, :update_item, :delete_items]

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

	# def update
	# 	@cart_item.update(:cart_item_count params[:cart_item_count].to_i)
	# 	rederect_to create_cart
	# end

	# def destroy
	# 	@cart_item.destroy
	# 	redirect_to create_cart
	# end

	# private
	# def find_cart
	# 	@cart = create_cart.find_by(params[:id])
	# end

	private
	def cart_item_params
		params.require(:cart_item).permit(:cart_id,:item_id)
	end

end

class CartItemsController < ApplicationController

	def create
		@cart = current_user.cart
		@cart_item = @cart.cart_items
		if @cart_item.blank?
		  @cart_item = cart_items.build(item_id: params[:item_id])
		end

		@cart_item.cart_item_count += params[:cart_item_count].to_i
		@cart_item.save
		rederect_to create_cart

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
end

class CartItemsController < ApplicationController

	def create
		
		cart = current_user.cart
		cart_item = cart.cart_items.build(cart_item_params)
		item = Item.find(params[:item_id])
		cart_item.item = item
		# binding.pry

    if cart_item.save
      redirect_to cart_path(current_user.cart)
    end
  end

	private
	def cart_item_params
		params.require(:cart_item).permit(:cart_id,:item_id,:cart_item_count)
	end

end

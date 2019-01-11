class ItemsController < ApplicationController
  def index
  	@items = Item.order("created_at desc").limit(10)
    @arr = Item.order("created_at desc")
    @arr_json = @arr.to_json.html_safe
    @j = Item.all
    if user_signed_in? 
      @cart = current_user.cart
    end
  end
  def show
  	@item = Item.find(params[:id])
    @cart_item = CartItem.new
    @cart_item.item = @item
  end
  def search
    @items = Item.search(params[:search])
  end

  private
   def item_params
    params.require(:item).permit(:item_name,:item_info,:price,:stock, :artist_id, :image)
   end
end
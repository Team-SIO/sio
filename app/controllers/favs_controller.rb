class FavsController < ApplicationController
 before_action :set_item

  def create
    @fav = Fav.create(user_id: current_user.id, item_id: params[:item_id])
    @favs = Fav.where(item_id: params[:item_id])
    @item.reload
  end

  def destroy
    fav = Fav.find_by(user_id: current_user.id, item_id: params[:item_id])
    fav.destroy
    @favs = fav.where(item_id: params[:item_id])
    @item.reload
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

end

class FavsController < ApplicationController
 before_action :set_item, except: [:my_fav]


 def my_fav
    #自分がいいねしたアイテムの一覧
    @favs = current_user.favs #自分のいいね一覧

 end

  def create
    @fav = Fav.create(user_id: current_user.id, item_id: params[:item_id])
    @favs = Fav.where(item_id: params[:item_id])
    @item.reload
  end

  def destroy
    fav = Fav.find_by(user_id: current_user.id, item_id: params[:item_id])
    fav.destroy
    @favs = Fav.where(item_id: params[:item_id])
    @item.reload
  end

  private
  def set_item
    @item = Item.find(params[:item_id])
  end
end

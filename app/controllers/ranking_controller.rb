class RankingController < ApplicationController
  def index
    @items =  Item.find(Fav.group(:item_id).order('count(item_id) desc').limit(5).pluck(:item_id))
  end
end

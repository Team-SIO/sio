class ItemsController < ApplicationController
  def index
  end

  def show
  end
  def search
    @items = Item.search(params[:qkeyword])
  end
end

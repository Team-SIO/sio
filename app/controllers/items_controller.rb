class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end
  def show
  end
  def search
    @items = Item.search(params[:search])
  end
end


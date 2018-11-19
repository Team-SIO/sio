class ArtistsController < ApplicationController
  def index
  end
  def show
    @artist = Artist.find(params[:id])
    @items = @artist.items

    @cart_item = CartItem.new
  end
end

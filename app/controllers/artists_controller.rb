class ArtistsController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def show
    @artist = Artist.find(params[:id])
    @items = @artist.items.on

    @cart_item = CartItem.new
  end
end

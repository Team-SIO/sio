class DiscsController < ApplicationController
	 layout "admin", :only => [:new, :edit]
  def index
  end
  def new
  	@item = Item.find(params[:item_id])
  	@disc = @item.discs.build
  end
  def create
  	@item = Item.find(params[:item_id])
  	@disc = @item.discs.build(disc_params)
  	if @disc.save
  		redirect_to new_item_discs_songs_path(@disc)
  	else
  		render "new"
  	end
  end
  def show
  end
  private
  def disc_params
    params.require(:disc).permit(:disc_list)
  end
end

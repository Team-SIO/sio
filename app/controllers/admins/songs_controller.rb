class Admins::DiscsController < ApplicationController
    before_action :authenticate_admin!
	 layout "admin", :only => [:new, :edit]
  def index
  end
  def new
  	@disc = Disc.find(params[:item_id])
  	@song = @disc.songs.build
  end
  def create
    @disc = Disc.find(params[:item_id])
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
    params.require(:disc).permit(:disc_order)
  end
end

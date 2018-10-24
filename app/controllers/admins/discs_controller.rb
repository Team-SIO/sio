class Admins::DiscsController < ApplicationController
  before_action :set_disc, only: [:show,:edit,:update]
	 layout "admin", :only => [:new, :edit]
  def index
  end
  def new
  	@item = Item.find(params[:item_id])
  	@disc = @item.discs.build
    
    15.times { @disc.songs.build }
  end
  def create
  	@item = Item.find(params[:item_id])
  	@disc = @item.discs.build(disc_params)
  	if @disc.save
  		redirect_to admintop_path
  	else
  		render :new
  	end
  end
  def show
  end
  def edit
  end
  def update
    if @disc.update(disc_params)
      redirect_to admintop_path
    else
      render :edit
    end
  end
  private
  def disc_params
    params.require(:disc).permit(:disc_list, songs_attributes: [:id, :song_title,:time, :song_list])
  end
  def set_disc
    @disc = Disc.find_by(item_id: params[:item_id])
  end
end




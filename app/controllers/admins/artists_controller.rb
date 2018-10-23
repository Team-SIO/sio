class Admins::ArtistsController < ApplicationController
	layout "admin"
  def new
  end

  def index
  	@artists = Artist.all
  end

  def show
  end
  def edit
    @artist = Artist.find(params[:id])
  end
  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to admintop_path
    else
      render "edit"
    end
  end
  private 
  def artist_params
    params.require(:artist).permit(:artist_info,:artist_name, :label_id, :genre_id)
  end
end

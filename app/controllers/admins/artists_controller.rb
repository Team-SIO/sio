class Admins::ArtistsController < ApplicationController
	layout "admin"
  PER = 8
  def new
    @artist = Artist.new
  end

  def index
    @artists = Artist.page(params[:page]).per(PER)
  end

  def create
    artist = Artist.new(artist_params)
    if artist.save
      redirect_to admins_artists_path
    else
      render "new"
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @items = @artist.items
  end
  def edit
    @artist = Artist.find(params[:id])
  end
  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to admins_artists_path
    else
      render "edit"
    end
  end

  def destroy
   artist = Artist.find(params[:id])
    if artist.destroy
      redirect_to admins_artists_path
    else
      render "edit"
    end
  end

  private 
  def artist_params
    params.require(:artist).permit(:artist_info,:artist_name,:label_id, :genre_id)
  end
end

class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @artists = Artist.all.where(genre_id: params[:id])
  end

end

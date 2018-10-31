class Admins::GenresController < ApplicationController
	layout "admin"
  
  def index
  	@genres = Genre.all
  end

  def new
  	@genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
  	genre = Genre.new(genre_params)
  	if genre.save
  		redirect_to admins_genres_path
  	else 
  		render "new"
  	end
  end

  def update
    genre = Genre.find(params[:id])
    if genre.update(genre_params)
      redirect_to admins_genres_path
    else
      render "edit"
    end
  end

  def destroy
    genre = Genre.find(params[:id])
    if genre.destroy
      redirect_to admins_genres_path
    else
      render "edit"
    end
  end
  private
  def genre_params
  	params.require(:genre).permit(:genre_name)
  end
end

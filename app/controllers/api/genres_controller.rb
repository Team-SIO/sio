class Api::GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    render "show", formats: "json", handlers: "jbuilder"
  end


  def index
    @genres = Genre.all
    render "index", formats: "json", handlers: "jbuilder"
  end
end

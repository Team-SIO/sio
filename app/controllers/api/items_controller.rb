class Api::ItemsController < ApplicationController
  def index
    @items = Item.search(params[:search])
    # @items = Item.all
    render "index", formats: "json", handlers: "jbuilder"

  end

  def show
  end

end

class Api::ItemsController < ApplicationController
  def index
    @items = Item.all
    render "index", formats: "json", handlers: "jbuilder"
  end

  def search
     @items = Item.search(params[:search])
    # @items = Item.all
    render "search", formats: "json", handlers: "jbuilder"
  end

end

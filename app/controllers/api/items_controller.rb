class Api::ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    render "show", formats: "json", handlers: "jbuilder"
  end
end

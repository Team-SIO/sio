class Admins::ItemsController < ApplicationController
  PER = 8
  layout "admin", :only => [:new, :edit, :show,:adminitems,:index]

  def index
     @items = Item.page(params[:page]).per(PER)
  end
  def new
     @item = Item.new
     # @artist = @item.artist.build
  end
  def create
     item = Item.new(item_params)
     @artist = Artist.find_or_create_by(artist_name: params[:item][:artist_name])
     item.artist_id  = @artist.id
    if item.save
      redirect_to new_admins_item_disc_path(item_id: item.id)
    else
      render "new"
    end
  end
  def show
    @item = Item.find(params[:id])

    @disc = @item.discs.take
  end
  def edit
    @item = Item.find(params[:id])
    @artist = @item.artist
  end
  def update
      item = Item.find(params[:id])
      if item.update(item_params)
        redirect_to admins_items_path
      else
        render "edit"
      end
  end
  def destroy
    item = Item.find(params[:id])
    if item.destroy
        redirect_to admins_items_path
    else
        render "edit"
    end
  end
  private
  #  def item_params
  #   params.require(:artist).permit(:artist_name,:artist_info, items_attributes: [:id, :item_title,:item_info,:price,:stock,:artist_id])
  # end
  #  def update_params
  #   params.require(:item).permit(:item_title,:item_info,:price,:stock,:artist_id)
  
   def item_params
    params.require(:item).permit(:item_name,:item_info,:price,:stock, :artist_id, :image)
   end
 
end

 # artist_attributes: [:artist_name,:artist_info]

#  id         :integer          not null, primary key
#  item_title :string
#  item_info  :text
#  price      :integer
#  artist_id  :integer
#  stock      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin_id   :integer
#
class Admins::ItemsController < ApplicationController
   layout "admin", :only => [:new, :edit, :adminitems,:index]
  def index
     @items = Item.order(created_at: :desc)
  end
  def new
    @admin =  current_admin
    @artist = @admin.artists.build
    @artist.items.build
    # @artist = @item.artist.build
  end
  def create
    @admin =  current_admin
    @artist = @admin.artists.build(artist_params)
     item = @artist.items.take
    if @artist.save
      redirect_to new_item_disc_path(item_id: item.id)
    else
      render "new"
    end
  end
  def show
  end
  def edit
    @item = Item.find(params[:id])
    @artist = @item.artist
  end
  def update
      @item = Item.find(params[:id])
      @artist = @item.artist
      @item.update(update_params)
      if @artist.update(artist_params)
        redirect_to admintop_path
      else
        render "edit"
      end
  end
  def search
    @items = Item.search(params[:qkeyword])
  end
  private
   def artist_params
    params.require(:artist).permit(:artist_name,:artist_info, items_attributes: [:id, :item_title,:item_info,:price,:stock])
  end
   def update_params
    params.require(:item).permit(:item_title,:item_info,:price,:stock,:artist_id)
  end
  # def item_params
  #   params.require(:item).permit(:item_title,:item_info,:price,:stock)
  # end
 
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
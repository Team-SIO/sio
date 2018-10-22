class ItemsController < ApplicationController
	 layout "admin", :only => [:new, :edit, :adminitems]
  def index
  end
  def adminitems
    @items = Item.order(created_at: :desc)
  end
  def new
    @artist = Artist.new
    @item  = @artist.items.build
    # @artist = @item.artist.build
  end
  def create
    @artist = Artist.find_or_create_by(artist_params)
    @item  = @artist.items.build(item_params)
  	if @item.save
  		redirect_to new_item_discs_path(@item)
  	else
  		render "new"
  	end
  end
  def show
  end
  def edit
    @item = Item.find(params[:id])
  end
  def update
      @item = Item.find(params[:id])
      if @item.update(item_params)
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
    params.require(:artist).permit(:artist_name,:artist_info)
  end
  def item_params
  	params.require(:item).permit(:item_title,:item_info,:price,:stock)
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
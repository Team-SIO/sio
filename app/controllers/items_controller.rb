class ItemsController < ApplicationController
	 layout "admin", :only => [:new, :edit, :adminitems]
  def index
  end
  def adminitems
    @items = Item.order(created_at: :desc)
  end
  def new
  	@item = current_admin.items.build
  end
  def create
  	@item = current_admin.items.build(item_params)
  	if @item.save
  		redirect_to new_item_discs_path(@item)
  	else
  		render "new"
  	end
  end
  def show
  end
  def search
    @items = Item.search(params[:qkeyword])
  end
  private
  def item_params
  	params.require(:item).permit(:item_title,:item_info,:price,:stock,:artist_id)
  end
end
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
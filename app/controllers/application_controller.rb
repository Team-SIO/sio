class ApplicationController < ActionController::Base
  # before_action :set_cart

	def after_sign_in_path_for(resource)
      case resource
      when User
      	root_path
      when Admin
        admintop_path
      end
    end
    def after_sign_up_path_for(resource)
    	case resource
    	when User
    		root_path
    	when Admin
    		admintop_path
    	end
    end

    # def set_cart
    #   @carts = create_cart.cart_items(params[:id])
    # end
end

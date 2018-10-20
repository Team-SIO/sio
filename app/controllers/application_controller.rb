class ApplicationController < ActionController::Base
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
end

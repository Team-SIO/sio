class HomeController < ApplicationController
	layout "admin"
	before_action :authenticate_admin!
  def admin

  end
end

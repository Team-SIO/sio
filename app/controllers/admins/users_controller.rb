class Admins::UsersController < ApplicationController
	before_action :authenticate_admin!, only: [:index]
	layout "admin"
	PER = 8
	def index
	  @users = User.page(params[:page]).per(PER)
	end
end

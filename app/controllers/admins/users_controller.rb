class Admins::UsersController < ApplicationController
	before_action :authenticate_admin!, only: [:index]
	layout "admin"
	def index
		@users = User.order(created_at: :desc)
	end
end

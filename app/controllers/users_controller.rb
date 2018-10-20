class UsersController < ApplicationController
	layout "admin"
	def index
		@users = User.order(created_at: :desc)
	end
end

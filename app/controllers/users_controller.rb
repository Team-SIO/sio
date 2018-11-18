class UsersController < ApplicationController
	before_action :authenticate_user!, :validate_user!

	def show
	end
	def edit
    @address = @user.addresses.new
    @address = Address.find_or_initialize_by(user_id: @user.id)
  end
	def index
	end
	def update
	  @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
    redirect_to user_path(@user.id)
    else
    render 'edit'
    end
	end

	private
	def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :birthday, :email, addresses_attributes: [:id, :ship, :zip, :phone, :_destroy])
	end
	def validate_user!
		@user = current_user
		@params_user = User.find(params[:id])
		redirect_to @user if @params_user != @user
	end
end

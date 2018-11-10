class UsersController < ApplicationController
	def show
		@user = current_user
	end
	def edit
		@user = current_user
    @user.addresses.new
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
    params.require(:user).permit(:first_name, :last_name, :gender, :email, addresses_attributes: [:id, :ship, :zip, :phone])
    end
end

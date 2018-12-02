class Admins::UsersController < ApplicationController
	before_action :authenticate_admin!, only: [:index, :edit, :update, :destroy]
	layout "admin"
	PER = 8
	def index
	  @users = User.page(params[:page]).per(PER)
	end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.addresses.each do | address |
      if address.ship.empty?
        address.destroy
      end
      address.save
    end
    if @user.save
    redirect_to admins_users_path
    else
    render 'edit'
    end
  end


  def destroy
    user = User.find(params[:id])
    if user.destroy
      redirect_to admins_users_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :birthday, :email, addresses_attributes: [:id, :ship, :zip, :phone, :_destroy])
  end
end

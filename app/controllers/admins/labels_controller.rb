class Admins::LabelsController < ApplicationController
	layout "admin"
  PER = 8

  def index
    @labels = Label.page(params[:page]).per(PER)
  end

  def show
  end

  def new
  	@label = Label.new
  end

  def edit
    @label = Label.find(params[:id])
  end

  def create
  	label = Label.new(label_params)
  	if label.save
  		redirect_to admins_labels_path
  	else 
  		render "new"
  	end
  end

  def update
    label = Label.find(params[:id])
    if label.update(label_params)
      redirect_to admins_labels_path
    else 
      render "edit"
    end
  end

  def destroy
  end
  private
  def label_params
  	 params.require(:label).permit(:label_name)
  end
end

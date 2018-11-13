class InquiriesController < ApplicationController
  def index
    @inquiry = Inquiry.new
    @inquiry.user = current_user
    render :action => 'index'
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.user = current_user
    if @inquiry.valid?
      render :action => 'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    InquiryMailer.received_email(@inquiry).deliver

    render :action => 'thanks'
  end
  private
  def inquiry_params
    params.require(:inquiry).permit(:name,:email,:message)
  end
end



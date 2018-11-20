class NotificationMailer < ActionMailer::Base
  default from: "saongtx7@gmail.com"

  def send_confirm_to_user(user,order)
    @user = user
    @url  = 'http://ec2-54-65-134-152.ap-northeast-1.compute.amazonaws.com/orders'
    @order_items = order.order_items
    mail(
        subject: "購入が完了しました",
        to: @user.email
    )
  end
end


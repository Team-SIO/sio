class NotificationMailer < ActionMailer::Base
  default from: "saongtx7@gmail.com"

  def send_confirm_to_user(user,order)
    @user = user
    @url  = 'http://localhost:3000/orders'
    @order_items = order.order_items
    mail(
        subject: "購入が完了しました",
        to: @user.email
    )
  end
end


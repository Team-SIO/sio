class NotificationMailer < ActionMailer::Base
  default from: "saongtx7@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    @url  = 'http://localhost:3000/orders'
    mail(
        subject: "購入が完了しました",
        to: @user.email
    )
  end
end


class InquiryMailer < ApplicationMailer
  default from: "saongtx7@gmail.com"   # 送信元アドレス

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end

end

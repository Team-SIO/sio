# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string           default(""), not null
#  address                :string           default(""), not null
#  gender                 :integer          not null
#  birthday               :datetime         not null
#  phone                  :string           default(""), not null
#  zip                    :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
 after_create :create_cart
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart
  has_many :favs
  has_many :orders

  enum gender: [:男性, :女性]


  def create_cart
  	Cart.create(user_id: self.id)
  end

end

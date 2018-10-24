# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  address                :string
#  gender                 :integer
#  birthday               :datetime
#  phone                  :string
#  zip                    :string
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
  has_many :addresses
  acts_as_paranoid
  
  enum gender: [:男性, :女性]
  validates :name, length: { maximum: 30 }


  def create_cart
  	Cart.create(user_id: self.id)
  end

end

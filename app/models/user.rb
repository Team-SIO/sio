# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  gender                 :integer
#  birthday               :datetime
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  deleted_at             :datetime
#  first_name             :string
#  last_name              :string
#

class User < ApplicationRecord
  after_create :create_cart
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart
  has_many :favs, dependent: :destroy
  has_many :orders
  has_many :addresses
  has_many :inquiries
  acts_as_paranoid
  accepts_nested_attributes_for :addresses, allow_destroy: true

  enum gender: [:男性, :女性]
  validates :first_name, length: { maximum: 15 }
  validates :last_name, length: { maximum: 15 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  def create_cart
  	Cart.create(user_id: self.id)
  end
  
  def name
   [first_name, last_name].join(' ')
  end
end

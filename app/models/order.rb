# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  delegate :name, to: :user, allow_nil: true
  enum status:  [:未発送オーダー,:発送済みオーダー]
  acts_as_paranoid
end

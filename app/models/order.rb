# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#  status     :integer
#  ship       :text
#

class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  delegate :name, to: :user, allow_nil: true
  enum status:  %i[ undispatched dispatched  ]
  belongs_to :address

  acts_as_paranoid
end

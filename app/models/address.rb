# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  ship       :text
#  zip        :string
#  phone      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Address < ApplicationRecord
  belongs_to :user

  validates :ship, length: { maximum: 50 }
  validates :zip, length: { is: 7 }     
  validates :phone, length: { is: 11 }
end

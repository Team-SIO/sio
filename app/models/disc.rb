# == Schema Information
#
# Table name: discs
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  disc_order :integer
#

class Disc < ApplicationRecord
  belongs_to :item
  delegate :item_name, to: :item, allow_nil: true
  has_many :songs, inverse_of: :disc
  accepts_nested_attributes_for :songs, allow_destroy: true
end

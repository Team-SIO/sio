# == Schema Information
#
# Table name: discs
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  disc_list  :integer
#

class Disc < ApplicationRecord
  belongs_to :item, dependent: :destroy
  has_many :songs
  accepts_nested_attributes_for :songs, allow_destroy: true
end

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
end

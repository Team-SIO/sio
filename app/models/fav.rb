# == Schema Information
#
# Table name: favs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :integer
#

class Fav < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :item, dependent: :destroy
end

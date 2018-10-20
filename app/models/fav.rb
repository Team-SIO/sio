# == Schema Information
#
# Table name: favs
#
#  id         :integer          not null, primary key
#  fav_count  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fav < ApplicationRecord
  belongs_to :user
end

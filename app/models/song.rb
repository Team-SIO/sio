# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  song_name  :string
#  time       :string
#  disc_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  song_order :integer
#

class Song < ApplicationRecord
  belongs_to :disc, inverse_of: :songs
  delegate :item, to: :disc
end

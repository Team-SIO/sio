# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  song_title :string
#  time       :string
#  disc_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  song_list  :integer
#

class Song < ApplicationRecord
  belongs_to :disc, inverse_of: :songs
end

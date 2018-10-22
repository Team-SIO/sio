# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  genre_id    :integer
#  label_id    :integer
#  artist_name :string
#  artist_info :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Artist < ApplicationRecord
  belongs_to :genre
  belongs_to :label
  has_many :items
end

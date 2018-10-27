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
  belongs_to :genre, optional: true
  belongs_to :label, optional: true
  delegate :genre_name, to: :genre, allow_nil: true
  delegate :label_name, to: :label, allow_nil: true
  has_many :items
end

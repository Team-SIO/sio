# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  genre_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ApplicationRecord
	has_many :artists
	enum status: [:ポップ, :ロック]

	validates :genre_name,  uniqueness: { case_sensitive: false }
end

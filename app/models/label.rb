# == Schema Information
#
# Table name: labels
#
#  id         :integer          not null, primary key
#  label_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Label < ApplicationRecord
	has_many :artists
	enum status: [:avex, :sonymusic]
end

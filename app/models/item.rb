# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  item_title :string
#  item_info  :text
#  price      :integer
#  artist_id  :integer
#  stock      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ApplicationRecord
  belongs_to :artist
  mount_uploader :image, ImageUploader
end

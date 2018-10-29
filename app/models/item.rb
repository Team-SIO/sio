# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  item_name  :string
#  item_info  :text
#  price      :integer
#  artist_id  :integer
#  stock      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#

class Item < ApplicationRecord
  belongs_to :artist
  delegate :artist_name, to: :artist, allow_nil: true
  has_many :cart_items
  has_many :order_items
  has_many :discs
  has_many :songs, through: :discs
  has_many :favs
  # mount_uploader :image, ImageUploader
  acts_as_paranoid

  validates :artist_id, presence: true
  scope :search, (->(word) { where('title LIKE ? OR content LIKE ?',
                                   "%#{sanitize_sql_like(word)}%",
                                   "%#{sanitize_sql_like(word)}%") })
end

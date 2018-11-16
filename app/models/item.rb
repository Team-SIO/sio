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
#  image      :string
#

class Item < ApplicationRecord
  belongs_to :artist
  delegate :artist_name, to: :artist, allow_nil: true
  has_many :cart_items
  has_many :order_items
  has_many :discs
  has_many :songs, through: :discs
  has_many :favs, dependent: :destroy
  enum status: %i(on off)
  mount_uploader :image, ImageUploader
  # acts_as_paranoid

  validates :artist_id, presence: true

  def fav_user(user_id)
     favs.find_by(user_id: user_id)
  end



  def self.search(search)
    if search
      Item.where('item_name LIKE ?', "%#{search}%") ||
      Item.joins(:artist).where('artist_name LIKE ?', "%#{search}%")
    else
      Item.all
    end
  end

  def stock_kanri
    if self.stock <= 0
      self.status = 1
      self.save
    end
  end


  # def mapping
  #   self.stock.times do |s|
  #     i = Item.new
  #     i.stock = i
  #     puts i
  #   end
  # end
end



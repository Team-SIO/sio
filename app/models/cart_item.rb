# == Schema Information
#
# Table name: cart_items
#
#  id              :integer          not null, primary key
#  cart_id         :integer
#  item_id         :integer
#  cart_item_count :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :item
end

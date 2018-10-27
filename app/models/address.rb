class Address < ApplicationRecord
  belongs_to :user

  validates :ship, length: { maximum: 50 }
  validates :zip, length: { is: 7 }     
  validates :phone, length: { is: 11 }


end

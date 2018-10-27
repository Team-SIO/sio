Address.seed do |s|
  s.id = 1
  s.ship = "住所1"
  s.zip = "242-9991"
  s.phone = "08012345678"
  s.user_id = 1
end

Address.seed do |s|
  s.id = 2
  s.ship = "住所2"
  s.zip = "215-1008"
  s.phone = "09045674568"
  s.user_id = 2
end

Address.seed do |s|
  s.id = 3
  s.ship = "住所3"
  s.zip = "115-8908"
  s.phone = "07034567890"
  s.user_id = 3
end

Address.seed do |s|
  s.id = 4
  s.ship = "住所3"
  s.zip = "115-8908"
  s.phone = "07034567890"
  s.user_id = 3
end

Address.seed do |s|
  s.id = 5
  s.ship = "住所1"
  s.zip = "242-9991"
  s.phone = "08012345678"
  s.user_id = 1
end


# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  ship       :text
#  zip        :string
#  phone      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
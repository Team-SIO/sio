# == Schema Information
#
# Table name: discs
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  disc_order :integer
#
Disc.seed do |s|
  s.id = 1
  s.item_id = 1
  s.disc_order = 1
end

Disc.seed do |s|
  s.id = 2
  s.item_id = 2
  s.disc_order = 1
end

Disc.seed do |s|
  s.id = 3
  s.item_id = 3
  s.disc_order = 1
end

Disc.seed do |s|
  s.id = 4
  s.item_id = 4
  s.disc_order = 1
end

Disc.seed do |s|
  s.id = 5
  s.item_id = 5
  s.disc_order = 1
end
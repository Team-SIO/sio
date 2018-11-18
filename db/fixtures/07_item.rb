Item.seed do |s|
  s.id = 1
  s.item_name = "アルバム1"
  s.item_info = "アルバム1です。"
  s.price = 1000
  s.stock = 50
  s.artist_id = 1
  s.image = Rails.root.join("db/fixtures/images/james-stamler-153487-unsplash.jpg").open
end

Item.seed do |s|
  s.id = 2
  s.item_name = "アルバム2"
  s.item_info = "アルバム2です。"
  s.price = 3000
  s.stock = 80
  s.artist_id = 2
  s.image = Rails.root.join("db/fixtures/images/james-stamler-153487-unsplash.jpg").open
end

Item.seed do |s|
  s.id = 3
  s.item_name = "アルバム3"
  s.item_info = "アルバム3です。"
  s.price = 3000
  s.stock = 100
  s.artist_id = 3
  s.image = Rails.root.join("db/fixtures/images/james-stamler-153487-unsplash.jpg").open
end

Item.seed do |s|
  s.id = 4
  s.item_name = "アルバム4"
  s.item_info = "アルバム4です。"
  s.price = 3500
  s.stock = 150
  s.artist_id = 4
  s.image = Rails.root.join("db/fixtures/images/james-stamler-153487-unsplash.jpg").open
end

Item.seed do |s|
  s.id = 5
  s.item_name = "アルバム5"
  s.item_info = "アルバム5です。"
  s.price = 3200
  s.stock = 40
  s.artist_id = 5
  s.image = Rails.root.join("db/fixtures/images/james-stamler-153487-unsplash.jpg").open
end




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

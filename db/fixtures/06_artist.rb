# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  genre_id    :integer
#  label_id    :integer
#  artist_name :string
#  artist_info :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  admin_id    :integer
#
Artist.seed do |s|
  s.id = 1
  s.genre_id = 1
  s.label_id = 2
  s.artist_name = "アーティスト1"
  s.artist_info = "アーティスト情報1"
end

Artist.seed do |s|
  s.id = 2
  s.genre_id = 2
  s.label_id = 2
  s.artist_name = "アーティスト2"
  s.artist_info = "アーティスト情報2"
end

Artist.seed do |s|
  s.id = 3
  s.genre_id = 2
  s.label_id = 3
  s.artist_name = "アーティスト3"
  s.artist_info = "アーティスト情報3"
end

Artist.seed do |s|
  s.id = 4
  s.genre_id = 1
  s.label_id = 1
  s.artist_name = "アーティスト4"
  s.artist_info = "アーティスト情報4"
end

Artist.seed do |s|
  s.id = 5
  s.genre_id = 3
  s.label_id = 4
  s.artist_name = "アーティスト5"
  s.artist_info = "アーティスト情報5"
end


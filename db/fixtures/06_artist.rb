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
  s.artist_name = "back number"
  s.artist_info = "日本のスリーピースロックバンドである。2004年結成"
end

Artist.seed do |s|
  s.id = 2
  s.genre_id = 1
  s.label_id = 8
  s.artist_name = "Mr.Children"
  s.artist_info = "日本のロックバンド。1989年結成。略称はミスチル"
end

Artist.seed do |s|
  s.id = 3
  s.genre_id = 1
  s.label_id = 8
  s.artist_name = "SEKAI NO OWARI"
  s.artist_info = "日本の男女4人組バンド。旧称は世界の終わり、海外で活動する際はEnd of the Worldという別名義を使用する。2006年結成"
end

Artist.seed do |s|
  s.id = 4
  s.genre_id = 1
  s.label_id = 4
  s.artist_name = "米津玄師"
  s.artist_info = "日本のミュージシャン、シンガーソングライター。別名義はハチ。徳島県出身。"
end

Artist.seed do |s|
  s.id = 5
  s.genre_id = 3
  s.label_id = 3
  s.artist_name = "TWICE"
  s.artist_info = "2015年に大韓民国で結成された女性9人組アイドルグループ。"
end

Artist.seed do |s|
  s.id = 6
  s.genre_id = 2
  s.label_id = 3
  s.artist_name = "エド・シーラン"
  s.artist_info = "イギリスのシンガーソングライター。身長173cm。"
end

Artist.seed do |s|
  s.id = 7
  s.genre_id = 4
  s.label_id = 9
  s.artist_name = "ONE OK ROCK"
  s.artist_info = "日本のロックバンドである。所属事務所はアミューズ。"
end


Artist.seed do |s|
  s.id = 8
  s.genre_id = 6
  s.label_id = 1
  s.artist_name = "Janne Da Arc"
  s.artist_info = "日本の男性5人組ヴィジュアル系ロックバンド。"
end


Artist.seed do |s|
  s.id = 9
  s.genre_id = 7
  s.label_id = 10
  s.artist_name = "清水翔太"
  s.artist_info = "日本のポップ/R&Bシンガーソングライター"
end


Artist.seed do |s|
  s.id = 10
  s.genre_id = 8
  s.label_id = 11
  s.artist_name = "AK-69"
  s.artist_info = "、日本の男性シンガーソングライター、ヒップホップMC、実業家。本名は武士 尋己（たけし ひろき)"
end



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
  s.artist_info = "日本の男性シンガーソングライター、ヒップホップMC、実業家。本名は武士 尋己（たけし ひろき)"
end

Artist.seed do |s|
  s.id = 11
  s.genre_id = 2
  s.label_id = 3
  s.artist_name = "エアロスミス"
  s.artist_info = "エアロスミス"
end

Artist.seed do |s|
  s.id = 12
  s.genre_id = 2
  s.label_id = 3
  s.artist_name = "ボン・ジョヴィ"
  s.artist_info = "ボン・ジョヴィ"
end

Artist.seed do |s|
  s.id = 13
  s.genre_id = 4
  s.label_id = 2
  s.artist_name = "アイコナ・ポップ"
  s.artist_info = "アイコナ・ポップ"
end

Artist.seed do |s|
  s.id = 14
  s.genre_id = 4
  s.label_id = 1
  s.artist_name = "イマジン・ドラゴンズ"
  s.artist_info = "イマジン・ドラゴンズ"
end

Artist.seed do |s|
  s.id = 15
  s.genre_id = 3
  s.label_id = 5
  s.artist_name = "EXO"
  s.artist_info = "EXO"
end

Artist.seed do |s|
  s.id = 16
  s.genre_id = 3
  s.label_id = 4
  s.artist_name = "BIGBANG"
  s.artist_info = "BIGBANG"
end

Artist.seed do |s|
  s.id = 17
  s.genre_id = 3
  s.label_id =1
  s.artist_name = "IU"
  s.artist_info = "IU"
end

Artist.seed do |s|
  s.id = 18
  s.genre_id = 6
  s.label_id = 2
  s.artist_name = "ViViD"
  s.artist_info = "ViViD"
end


Artist.seed do |s|
  s.id = 19
  s.genre_id = 6
  s.label_id = 3
  s.artist_name = "the GazettE"
  s.artist_info = "the GazettE"
end

Artist.seed do |s|
  s.id = 20
  s.genre_id = 4
  s.label_id = 1
  s.artist_name = "MY FIRST STORY"
  s.artist_info = "MY FIRST STORY"
end


Artist.seed do |s|
  s.id = 21
  s.genre_id = 5
  s.label_id = 4
  s.artist_name = "SiM"
  s.artist_info = "SiM"
end



Artist.seed do |s|
  s.id = 22
  s.genre_id = 4
  s.label_id = 5
  s.artist_name = "RADWIMPS"
  s.artist_info = "RADWIMPS"
end

Artist.seed do |s|
  s.id = 23
  s.genre_id = 4
  s.label_id = 2
  s.artist_name = "マキシマム・ザ・ホルモン"
  s.artist_info = "マキシマム・ザ・ホルモン"
end

Artist.seed do |s|
  s.id = 24
  s.genre_id = 4
  s.label_id = 5
  s.artist_name = "Fear, and Loathing in Las Vegas"
  s.artist_info = "Fear, and Loathing in Las Vegas"
end

Artist.seed do |s|
  s.id = 25
  s.genre_id = 5
  s.label_id = 6
  s.artist_name = "Alice"
  s.artist_info = "ALice"
end


Artist.seed do |s|
  s.id = 26
  s.genre_id = 5
  s.label_id = 6
  s.artist_name = "BENI"
  s.artist_info = "BENI"
end

Artist.seed do |s|
  s.id = 27
  s.genre_id = 5
  s.label_id = 5
  s.artist_name = "Crystal Kay"
  s.artist_info = "Crystal Kay"
end


Artist.seed do |s|
  s.id = 28
  s.genre_id = 6
  s.label_id = 2
  s.artist_name = "LGYankees"
  s.artist_info = "LGYankees"
end


Artist.seed do |s|
  s.id = 29
  s.genre_id = 6
  s.label_id = 2
  s.artist_name = "ET-KING"
  s.artist_info = "ET-KING"
end



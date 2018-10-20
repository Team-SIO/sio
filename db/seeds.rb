# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8


50.times do
     User.create!(
        name: Faker::Name.name,  
        email: Faker::Internet.email,
        zip: Faker::Address.zip_code,  
        address: Faker::Address.city,
        birthday: Faker::Date.birthday,
        phone: Faker::PhoneNumber.phone_number,
        password: Faker::Internet.password
      )
end
10.times do
     Admin.create!(
        admin_name: Faker::Name.name,  
        email: Faker::Internet.email,
        password: Faker::Internet.password
      )
end

8.times do
     Label.create!(
        label_name: Faker::DragonBall.character
      )
end


8.times do
     Genre.create!(
        genre_name: Faker::DragonBall.character
      )
end


30.times do
     Artist.create!(
        artist_name: Faker::Artist.name,
        artist_info: Faker::Internet.email,
        genre_id: Faker::Number.between(1, 8),
        label_id: Faker::Number.between(1, 8)
      )
end



50.times do
     Item.create!(
     	 item_title: Faker::Name.name,
     	 item_info: Faker::Name.name,
     	 price: Faker::Number.between(1000, 3500),
     	 artist_id: Faker::Number.between(1, 30),
     	 stock: Faker::Number.between(10, 100),
     	 admin_id: Faker::Number.between(1, 10)
     	 fav_count: Faker::Number.between(1, 10)
      )
end

50.times do
     Order.create!(
     	 user_id: Faker::Number.between(1, 50)
      )
end


60.times do
     Disc.create!(
     	 item_id: Faker::Number.between(1, 50)
      )
end

200.times do
     Song.create!(
     	 disc_id: Faker::Number.between(1, 60)
      )
end

50.times do
     OrderItem.create!(
     	 order_id: Faker::Number.between(1, 50),
     	 item_id: Faker::Number.between(1, 50)
      )
end


50.times do
     Fav.create!(
     	 user_id: Faker::Number.between(1, 50),
     	 item_id: Faker::Number.between(1, 50)
      )
end


50.times do
     CartItem.create!(
     	 cart_id: Faker::Number.between(1, 50),
     	 item_id: Faker::Number.between(1, 50)
      )
end

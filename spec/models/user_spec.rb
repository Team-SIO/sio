require 'rails_helper'

RSpec.describe User, type: :model do
# 名前、メール、パスワードがあれば有効な状態であること
 it "is valid with a name, email and password" do
 	user = User.new(
 		name: "Satoshi",
 		email: "saongtx7@gmail.com",
 		password: "aaa1234"
 	  )
 	expect(user).to be_valid
 end
 # 名前かなけれは無効な状態てあること
 it "is invalid without a name" do
  user = User.new(name: nil)
  user.valid?
  expect(user.errors[:name]).to include("can't be blank")
end

 it "is invalid without an email address"
 # 重複したメールアドレスなら無効な状態であること
 it "is invalid with a duplicate email address" do
 	User.create(
 		name: "mondo",
 		email: "mondo@gmail.com",
 		passwod: "mondomondo"
 	  )
 	user = User.new(
 		name: "shingai",
 		email: "mondo@gmail.com",
 		password: "shingai"
 	  )
 	user.valid?
 	expect(user.errors[:email]).to include("has already been taken")
 end
 # ユーザーのフルネームを文字列として返すこと
 it "returns a user's full name as a string"
end


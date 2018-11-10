# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  gender                 :integer
#  birthday               :datetime
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  deleted_at             :datetime
#  first_name             :string
#  last_name              :string
#

require 'rails_helper'

RSpec.describe User, type: :model do
	describe "validation" do
		before :each do
			@user = User.new(
				first_name: "Satoshi",
				last_name: "Ono",
				email: "saongtx7@gmail.com",
				password: "onoono"
			)
		end
		context "名前、苗字、emailがある場合" do
			it "is valid" do
				expect(@user).to be_valid
			end
		end
		context "名前がない場合" do
			before :each do
				@user.first_name = nil
			end
			it "is invalid" do
				@user.valid?
				expect(@user.errors[:first_name].size).to eq(1)
			end
		end
		context "emailが空の時" do
			before :each do
				@user.email = nil
			end
			it "is invalid" do
				@user.valid?
				expect(@user.errors[:email].size).to eq(2)
			end
		end
		context "emailの型が正しくない場合" do
			before :each do
				@user.email = "kijduehfu"
			end
			it "is invalid" do
				@user.valid?
				expect(@user.errors[:email].size).to eq(1)
			end
		end
	end
end


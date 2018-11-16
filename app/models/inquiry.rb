class Inquiry < ApplicationRecord
    belongs_to :user
    validates :name, :presence => {:message => '名前を入力してください'}
    validates :email, :presence => {:message => 'メールアドレスを入力してください'}
end
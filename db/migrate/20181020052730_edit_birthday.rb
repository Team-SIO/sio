class EditBirthday < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :birthday, :datetime
  end
end

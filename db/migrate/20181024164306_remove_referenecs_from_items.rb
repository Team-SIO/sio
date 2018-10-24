class RemoveReferenecsFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_reference :items, :admins, foreign_key: true
  end
end

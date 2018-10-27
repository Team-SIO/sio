class RemoveReferenecFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_reference :items, :admin, foreign_key: true
  end
end

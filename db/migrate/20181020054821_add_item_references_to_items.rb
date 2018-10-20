class AddItemReferencesToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :admin, foreign_key: true
  end
end

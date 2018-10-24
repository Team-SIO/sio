class AddNameToLabels < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :label_name, :string
  end
end

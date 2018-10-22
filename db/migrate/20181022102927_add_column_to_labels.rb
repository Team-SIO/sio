class AddColumnToLabels < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :status, :integer
  end
end

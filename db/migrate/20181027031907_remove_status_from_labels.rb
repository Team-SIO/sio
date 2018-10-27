class RemoveStatusFromLabels < ActiveRecord::Migration[5.2]
  def change
    remove_column :labels, :stautus, :string
  end
end

class RemoveStatsFromLabels < ActiveRecord::Migration[5.2]
  def change
    remove_column :labels, :status, :string
  end
end

class RemoveFromParties < ActiveRecord::Migration[7.1]
  def change
    remove_column :parties, :level_id
  end
end

class RemoveUselessTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :parties, :resolution_time
    remove_column :parties, :resolution_date
  end
end

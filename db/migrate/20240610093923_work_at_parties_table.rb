class WorkAtPartiesTable < ActiveRecord::Migration[7.1]
  def change
    change_column_default :parties, :progression, 1
    change_column_default :parties, :number_error, 0
  end
end

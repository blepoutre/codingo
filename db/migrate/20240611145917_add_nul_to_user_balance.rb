class AddNulToUserBalance < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :balance, 0
  end
end

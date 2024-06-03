class AddNameBalanceAdminToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :balance, :integer
    add_column :users, :admin, :boolean, default: false
  end
end

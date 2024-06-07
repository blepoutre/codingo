class AddWinToPartys < ActiveRecord::Migration[7.1]
  def change
    add_column :parties, :win, :boolean, default: false
  end
end

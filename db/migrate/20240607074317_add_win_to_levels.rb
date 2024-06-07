class AddWinToLevels < ActiveRecord::Migration[7.1]
  def change
    add_column :levels, :win, :boolean, default: false
  end
end

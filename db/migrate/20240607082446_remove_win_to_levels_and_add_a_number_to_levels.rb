class RemoveWinToLevelsAndAddANumberToLevels < ActiveRecord::Migration[7.1]
  def change
    remove_column :levels, :win
    add_column :levels, :number, :integer
  end
end

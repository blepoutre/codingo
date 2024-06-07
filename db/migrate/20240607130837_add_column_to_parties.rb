class AddColumnToParties < ActiveRecord::Migration[7.1]
  def change
    add_column :parties, :number_error, :integer
  end
end

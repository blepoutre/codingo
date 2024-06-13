class AddLevelWhatGoodAnswer < ActiveRecord::Migration[7.1]
  def change
    add_column :levels, :question, :text
  end
end

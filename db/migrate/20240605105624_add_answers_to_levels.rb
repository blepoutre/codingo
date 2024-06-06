class AddAnswersToLevels < ActiveRecord::Migration[7.1]
  def change
    add_column :levels, :answers, :text, array: true, default: []
  end
end

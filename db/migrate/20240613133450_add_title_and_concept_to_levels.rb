class AddTitleAndConceptToLevels < ActiveRecord::Migration[7.1]
  def change
    add_column :levels, :title, :string
    add_column :levels, :concept, :text
  end
end

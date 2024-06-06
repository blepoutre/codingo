class AddUrlToLevels < ActiveRecord::Migration[7.1]
  def change
    add_column :levels, :url, :string
  end
end

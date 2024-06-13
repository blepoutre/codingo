class AddEquipedToCharacter < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :equiped, :boolean, default: false
  end
end

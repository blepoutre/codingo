class AddPriceForCharacter < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :price, :integer
  end
end

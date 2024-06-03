class AddCharacterForeignKeyToCollection < ActiveRecord::Migration[7.1]
  def change
    add_reference :collections, :character, foreign_key: true
  end
end

class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :nickname
      t.string :personality
      t.string :sentence

      t.timestamps
    end
  end
end

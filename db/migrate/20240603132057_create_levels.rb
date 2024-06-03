class CreateLevels < ActiveRecord::Migration[7.1]
  def change
    create_table :levels do |t|
      t.string :instruction
      t.integer :validation
      t.integer :reward
      t.references :world, null: false, foreign_key: true

      t.timestamps
    end
  end
end

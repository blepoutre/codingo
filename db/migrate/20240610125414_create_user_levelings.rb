class CreateUserLevelings < ActiveRecord::Migration[7.1]
  def change
    create_table :user_levelings do |t|
      t.boolean :done
      t.integer :reward
      t.references :party, null: false, foreign_key: true
      t.references :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end

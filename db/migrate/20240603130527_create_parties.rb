class CreateParties < ActiveRecord::Migration[7.1]
  def change
    create_table :parties do |t|
      t.integer :resolution_time
      t.date :resolution_date
      t.integer :progression

      t.timestamps
    end
  end
end

class CreateWorlds < ActiveRecord::Migration[7.1]
  def change
    create_table :worlds do |t|
      t.string :name

      t.timestamps
    end
  end
end

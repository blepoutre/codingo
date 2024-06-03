class AddUserAndLevelForeignKeysToParty < ActiveRecord::Migration[7.1]
  def change
    add_reference :parties, :user, foreign_key: true
    add_reference :parties, :level, foreign_key: true
  end
end

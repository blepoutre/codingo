class Level < ApplicationRecord
  belongs_to :world
  has_many :user_levelings
  # def already_done?
  #   parties = Party.where(user: current_user, level: self)
  #    parties.size > 0
  # end
end

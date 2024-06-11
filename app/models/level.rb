class Level < ApplicationRecord
  belongs_to :world
  has_many :user_levelings, dependent: :destroy
end

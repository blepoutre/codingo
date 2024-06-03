class Level < ApplicationRecord
  belongs_to :world
  has_many :parties
end

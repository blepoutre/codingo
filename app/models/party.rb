class Party < ApplicationRecord
  belongs_to :user
  has_many :user_levelings
end

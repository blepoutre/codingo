class Character < ApplicationRecord
  has_many :collections
  has_many_attached :photos
end

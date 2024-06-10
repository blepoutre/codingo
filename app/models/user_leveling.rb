class UserLeveling < ApplicationRecord
  belongs_to :party
  belongs_to :level
end

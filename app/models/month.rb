class Month < ApplicationRecord
  belongs_to :user
  has_many :weeks
  belongs_to :year
end

class Mandara < ApplicationRecord
  belongs_to :user
  has_many :subskills
end

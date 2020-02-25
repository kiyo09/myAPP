class Mandara < ApplicationRecord
  has_many :subskills
  accepts_nested_attributes_for :subskills
end

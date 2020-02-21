class Week < ApplicationRecord
  has_many :posts
  belongs_to :month
end

class Week < ApplicationRecord
  belongs_to :user
  # has_many :posts
  belongs_to :month
end

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :todo
  has_many :levels
  # belongs_to :week
end

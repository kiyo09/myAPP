class Post < ApplicationRecord
  belongs_to :user
  belongs_to :todo
  # belongs_to :week
end

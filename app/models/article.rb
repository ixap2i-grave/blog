class Article < ApplicationRecord
  has_many :tags
  has_many :comments, dependent: :destroy
end

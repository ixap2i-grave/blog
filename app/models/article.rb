class Article < ApplicationRecord
  has_many :tags, through: :article_tag_mappings
  has_many :comments, dependent: :destroy
end

class Article < ApplicationRecord
  has_many :tags, through: :article_tag_mappings
  has_many :comments, dependent: :destroy
  has_many :article_tag_mappings, dependent: :destroy
  accepts_nested_attributes_for :article_tag_mappings, allow_destroy: true
end

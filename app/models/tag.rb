class Tag < ApplicationRecord
  belongs_to :article, through: :article_tag_mappings
  has_many :article_tag_mappings
end

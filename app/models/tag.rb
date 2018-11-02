class Tag < ApplicationRecord
  # allow default:nil to association model
  belongs_to :article
  # , optional: true
  has_many :article_tag_mappings, dependent: :destroy
end

class Article < ApplicationRecord
  has_many :tags, through: :article_tag_mappings
  has_many :comments, dependent: :destroy, inverse_of: :article
  has_many :article_tag_mappings, dependent: :destroy
  accepts_nested_attributes_for :article_tag_mappings, allow_destroy: true

  validates :article_tag_mapping_id, presence: :true
  scope :aggregate_of_month, -> do
    order('created_at ASC')
  end

  scope :aggregate_of_tag, -> (tag) do
    joins('article_tag_mapping').where('category_id = ?', tag.category)
  end

end

class Ckeditor::Asset < ActiveRecord::Base
  # include ActiveRecord
  # include Ckeditor::Orm::ActiveRecord::AssetBase
  # include Ckeditor::Backend::Paperclip
  delegate :url, :current_path, :content_type, to: :data

  validates :data, presence: true
end

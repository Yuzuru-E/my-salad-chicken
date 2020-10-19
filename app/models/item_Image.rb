class ItemImage < ApplicationRecord
  belongs_to :item
  validates :url, presence: true

  mount_uploader :url, ItemImageUploader
end
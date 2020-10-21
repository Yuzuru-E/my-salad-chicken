class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :maker
  has_many :reviews
  has_many :users, through: :reviews

  mount_uploader :image_url, ItemImageUploader
end

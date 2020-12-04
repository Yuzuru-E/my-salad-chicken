class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :reviews
  has_many :users, through: :reviews
  has_many :favorites, dependent: :destroy
  belongs_to :user, optional: true
  belongs_to_active_hash :maker

  mount_uploader :image_url, ItemImageUploader
end

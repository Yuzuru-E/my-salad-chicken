class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :user_id, presence: true, uniqueness: true

  mount_uploader :commentImg, CommentImgUploader
  
end
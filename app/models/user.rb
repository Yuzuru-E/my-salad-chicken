class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :age
  belongs_to :gender
  has_many :items

        
  def self.guest
    find_or_create_by!(email: 'guest@example.com', name: 'ゲスト', nickname: 'ゲストユーザー' ) do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now
    end
  end

  mount_uploader :image, ImageUploader
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :age
  belongs_to_active_hash :gender
  has_many :reviews, dependent: :destroy

  # validates :comment, presence: true, length: { maximum: 200 }
  

        
  def self.guest
    find_or_create_by!(email: 'guest@example.com' ) do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now
    end
  end

  mount_uploader :avaterImg, AvaterImgUploader

end

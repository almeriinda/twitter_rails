class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable
  has_one_attached :image
  has_one_attached :front_cover
  delegate :filename, to: :image, allow_nil: true         
  delegate :filename, to: :front_cover, allow_nil: true         


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
      user.image = auth.info.image
    end
  end       
  
end

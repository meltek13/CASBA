class User < ApplicationRecord
  #after_create :welcome_send
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar

  has_one_attached :flat_picture
  belongs_to :flatsharing, optional: true
  devise :database_authenticatable,
  :jwt_authenticatable,
  :registerable,
  :recoverable,
  jwt_revocation_strategy: JwtDenylist
  has_many :expenses

  #validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  #validates :password, presence: true, :length => {:within => 6..40}

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end


end

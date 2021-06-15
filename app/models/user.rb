class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar

  devise :database_authenticatable,
  :jwt_authenticatable,
  :registerable,
  :recoverable,
  jwt_revocation_strategy: JwtDenylist

  belongs_to :flatsharing, optional: true
  
  
end

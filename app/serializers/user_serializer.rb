class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :email, :nickname, :status, :avatar, :flat_picture, :color, :solde
  def avatar
    if object.avatar.attached?
      {
        url: rails_blob_url(object.avatar)
      }
    end
  end

  def flat_picture
    if object.flat_picture.attached?
      {
        url: rails_blob_url(object.flat_picture)
      }
    end
  end
end

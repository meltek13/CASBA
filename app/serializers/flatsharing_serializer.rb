class FlatsharingSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :admin_id
end

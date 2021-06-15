class FlatsharingSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :admin_id, :flat_mate
end

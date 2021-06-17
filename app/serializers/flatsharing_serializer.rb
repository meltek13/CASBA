class FlatsharingSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :admin_id, :pending_invitation, :flat_mate
end

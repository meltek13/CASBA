class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :timedate, :dashboard
end

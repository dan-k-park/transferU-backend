class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :description, :location, :attendees
  has_one :category
  has_one :school
end

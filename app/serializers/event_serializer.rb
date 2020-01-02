class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :description, :location, :attendees
  has_one :category
  has_one :school
  has_one :user
end

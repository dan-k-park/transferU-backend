class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :time, :description, :location, :attendees, :created_at, :profiles
  has_one :category
  has_one :school
  has_one :user
end

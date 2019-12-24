class EventProfileSerializer < ActiveModel::Serializer
  attributes :id, :attending
  has_one :profile
  has_one :event
end

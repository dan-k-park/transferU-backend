class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :state
end

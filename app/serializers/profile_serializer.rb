class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :bio, :avatarURL
  has_one :school
end

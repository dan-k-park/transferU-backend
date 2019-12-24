class Profile < ApplicationRecord
  has_many :event_profiles
  has_many :events, through: :event_profiles

  belongs_to :school
  belongs_to :user
end

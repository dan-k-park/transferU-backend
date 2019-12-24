class Event < ApplicationRecord
  has_many :event_profiles, dependent: :destroy
  has_many :profiles, through: :event_profiles

  belongs_to :category
  belongs_to :school
end

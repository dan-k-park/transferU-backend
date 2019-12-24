class School < ApplicationRecord
  has_many :profiles
  has_many :events
end

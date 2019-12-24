class EventProfile < ApplicationRecord
  belongs_to :profile
  belongs_to :event
end

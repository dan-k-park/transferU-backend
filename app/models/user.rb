class User < ApplicationRecord
  has_secure_password

  has_one :profile

  has_many :events
  
  validates :username, uniqueness: { case_sensitive: false }

end

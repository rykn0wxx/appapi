class User < ApplicationRecord
  has_one :role
  validates :username, presence: true
  validates :active, presence: true
end

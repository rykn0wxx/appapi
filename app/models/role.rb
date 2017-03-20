class Role < ApplicationRecord
  has_one :appkey
  has_many :users
end

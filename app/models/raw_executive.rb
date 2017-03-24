class RawExecutive < ApplicationRecord
  has_one :client

  validates_presence_of :client, :month
end

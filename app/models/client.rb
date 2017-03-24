class Client < ApplicationRecord
  has_many :raw_executives

  has_one :project, inverse_of: :clients
  has_one :region, inverse_of: :clients

end

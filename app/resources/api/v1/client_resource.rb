class Api::V1::ClientResource < Api::V1::ApplicationResource
  attributes :client_name, :active

  has_many :raw_executives
  has_one :project
  has_one :region

  filter :active
end

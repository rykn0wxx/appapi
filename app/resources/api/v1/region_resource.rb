class Api::V1::RegionResource < Api::V1::ApplicationResource
  attributes :region_name, :region_code, :region_label, :active

  has_many :clients
  filter :active
end

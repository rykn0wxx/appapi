class Api::V1::AppkeyResource < Api::V1::ApplicationResource
  attributes :acl_token
  has_one :role
end

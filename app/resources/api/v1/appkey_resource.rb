class Api::V1::AppkeyResource < Api::V1::ApplicationResource
  attributes :acl_token, :role_id
  belongs_to :role
end

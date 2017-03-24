class Api::V1::UserResource < Api::V1::ApplicationResource
  attributes :username, :active, :role_id

  has_one :role

end

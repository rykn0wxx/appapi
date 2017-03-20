class Api::V1::UserResource < Api::V1::ApplicationResource
  attributes :username, :role_name, :key

  def role_name
    Role.pluck(:name)[0]
  end

  def key
    Appkey.pluck(:acl_token)[0]
  end
end

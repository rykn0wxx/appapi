class Api::V1::RoleResource < Api::V1::ApplicationResource
  attributes :name, :api_key


  def api_key
    Appkey.pluck(:acl_token)[0]
  end
end

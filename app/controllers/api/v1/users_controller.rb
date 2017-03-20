class Api::V1::UsersController < Api::V1::BaseController
  before_filter :restrict_access

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      User.exists?(username: token)
    end
  end

  # def restrict_access
  #   api_key = User.find_by_username(params[:access_token])
  #   head :unauthorized unless api_key
  # end
end

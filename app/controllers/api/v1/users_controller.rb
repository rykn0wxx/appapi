class Api::V1::UsersController < Api::V1::BaseController

  before_action :authorize, :except => [:index]

  def index
    render json: User.select('users.id, users.username, roles.id as roleId, roles.name as roleName, appkeys.acl_token as token')
      .joins('INNER JOIN roles on roles.id = users.role_id')
      .joins('INNER JOIN appkeys on roles.id = appkeys.role_id')
      .where(users: {username: params[:username]})
  end
  #
  def user_params
    params.require(:user).permit(:username, :id)
  end
  # before_action :restrict_access
  #
  #
  # def restrict_access
  #   authenticate_or_request_with_http_token do |token, options|
  #     if User.exists?(username: token)
	# 			return true if User.exists?(username: token)
  #       # render json: User.select('users.id, users.username, roles.id as roleId, roles.name as roleName, appkeys.acl_token as token')
  #         # .joins('INNER JOIN roles on roles.id = users.role_id')
  #         # .joins('INNER JOIN appkeys on roles.id = appkeys.role_id')
  #     # elsif User.exists?(username: token)
  #     #   render json: User.select('users.id, users.username, roles.id as roleId, roles.name as roleName, appkeys.acl_token as token')
  #     #     .joins('INNER JOIN roles on roles.id = users.role_id')
  #     #     .joins('INNER JOIN appkeys on roles.id = appkeys.role_id')
  #     #     .where(users: { username: token })
  #     else
  #       render(status: :unauthorized, json:{errors:[{
  #         status:401, code:'unauthorized', title:'Unauthorized'
  #       }]})
  #     end
  #
  #   end
  # end

  # def restrict_access
  #   api_key = User.find_by_username(params[:access_token])
  #   head :unauthorized unless api_key
  # end
end

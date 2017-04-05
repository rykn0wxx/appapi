class Api::V1::BaseController < ActionController::Base
  # protect_from_forgery with: :null_session

  include JSONAPI::ActsAsResourceController

  # rescue_from Exception, with: :generic_exception
  # rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  # rescue_from StandardError do |exception|
  #   render json: {
  #     status: 500,
  #     title: 'Internal server error'
  #   }, status: 500
  #
  #   throw exception
  # end
   respond_to :json

  private

  def record_not_found(error)
    respond_to do |format|
      format.json { render :json => {:error => error.message}, :status => 404 }
    end
  end

  def generic_exception(error)
    respond_to do |format|
      format.json { render :json => {:error => error.message}, :status => 500 }
    end
  end

  def authorize
    hdr = request.headers["Authorization"]
    if hdr && hdr =~ /\AToken\s+(token="?)?(.+?)"?\s*\z/
      return true if valid_apikey?($2)
    end
    render(status: :unauthorized, json:{errors:[{
      status:401, code:'unauthorized', title:'Unauthorized'
    }]})
  end
  #
  def valid_apikey?(key)
    @thekey = Appkey.find_by(acl_token:key)
    !!@thekey # Make boolean
  end
end

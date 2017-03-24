class Api::V1::BaseController < JSONAPI::ResourceController
  # before_action :authorize!+

  def authorize!
    hdr = request.headers["Authorization"]
    if hdr && hdr =~ /\AToken\s+(token="?)?(.+?)"?\s*\z/
      return true if valid_apikey?($2)
    end
    render(status: :unauthorized, json:{errors:[{
      status:401, code:'unauthorized', title:'Unauthorized'
    }]})
  end

  def valid_apikey?(key)
    @thekey = Appkey.find_by(acl_token:key)
    !!@thekey # Make boolean
  end
end

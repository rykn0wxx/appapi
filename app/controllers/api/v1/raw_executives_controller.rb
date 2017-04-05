class Api::V1::RawExecutivesController < Api::V1::BaseController
  before_action :restrict_access

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|

      if Appkey.exists?(acl_token: token)
        zExec = RawExecutive
          .select("'raw_executives'.*, clients.client_name, regions.region_name, regions.region_code, regions.region_label")
          .joins('INNER JOIN clients on clients.id = "raw_executives".client_id')
          .joins('INNER JOIN regions on clients.region_id = regions.id')
          # .where(clients: { active: true })
        render json: zExec
      else
        render(status: :unauthorized, json:{errors:[{
          status:401, code:'unauthorized', title:'Unauthorized'
        }]})
      end

    end
  end

  # zExec = RawExecutive
  #   .select('raw_executives.month, clients.client_name, Sum(raw_executives.revenue) AS sumRevenue, Max(raw_executives.revenue) AS maxRevenue, Min(raw_executives.revenue) AS minRevenue, Avg(raw_executives.revenue) AS avgRevenue')
  #   .joins('INNER JOIN clients on clients.id = raw_executives.client_id')
  #   .where(clients: { active: true })
  #   .group('raw_executives.month, clients.client_name')
end

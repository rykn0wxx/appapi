class Api::V1::ProjectsController < Api::V1::BaseController

  def index
    zProj = Project
      .select('clients.id, projects.id as projectId, regions.id as regionId, regions.region_name as regionName, projects.project_name as projectName, clients.client_name as clientName')
      .joins('INNER JOIN clients on projects.id = clients.project_id')
      .joins('INNER JOIN regions on clients.region_id = regions.id')
      .where(clients: { active: true })
    render json: zProj
  end

end

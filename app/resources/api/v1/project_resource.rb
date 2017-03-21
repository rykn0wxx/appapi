class Api::V1::ProjectResource < Api::V1::ApplicationResource
  attributes :project_name, :project_code, :active, :clients

  has_many :clients
  filter :active

  def clients
     @model.clients.pluck(:client_name)
  end
end

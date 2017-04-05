# == Schema Information
#
# Table name: clients
#
#  id          :integer          not null, primary key
#  _id         :integer
#  client_name :string
#  project_id  :integer
#  region_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  active      :boolean
#
# Indexes
#
#  index_clients_on_client_name  (client_name) UNIQUE
#  index_clients_on_project_id   (project_id)
#  index_clients_on_region_id    (region_id)
#

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

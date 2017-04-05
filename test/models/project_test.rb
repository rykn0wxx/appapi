# == Schema Information
#
# Table name: projects
#
#  id           :integer          not null, primary key
#  _id          :integer
#  project_name :string
#  project_code :string
#  active       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_projects_on_project_name  (project_name) UNIQUE
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

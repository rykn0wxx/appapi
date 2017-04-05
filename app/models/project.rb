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

class Project < ApplicationRecord
  has_many :clients

  # def self.import(file)
  #   CSV.foreach(file.path, headers: true) do |row|
  #     Project.create! row.to_hash
  #   end
  # end

end

# defaultRoles = ['public','user','admin','anon']
# # #
# Role.delete_all
# Appkey.delete_all
# defaultRoles.each do |role|
#   zRole = Role.where(:name => role).create
#   Appkey.create!(:acl_token => SecureRandom.hex, :role => zRole)
# end
#
# User.create!(username:'michael.feske',role_id:4,active:true)
#
# zRegion = JSON.parse(File.read('db/initial/region.json'))
# Region.destroy_all
# Region.create!(zRegion)
#
# zProject = JSON.parse(File.read('db/initial/projects.json'))
# Project.destroy_all
# Project.create!(zProject)

# zClient = JSON.parse(File.read('db/initial/clients.json'))
# Client.destroy_all
# zClient.each do |cll|
#   row = Hash[cll]
#   reg = Region.find_by_region_label(row['region_id'])
#   prj = Project.find_by_project_name(row['project_id'])
#   Client.create!(:_id => row['_id'], :client_name => row['client_name'], :project_id => prj['id'], :region_id => reg['id'])
# end
# # Client.create!(zClient)
#
 # zzee = JSON.parse(File.read('db/initial/executivedata.json'))
 # RawExecutive.destroy_all
 # RawExecutive.create!(zzee)

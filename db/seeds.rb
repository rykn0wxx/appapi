# defaultRoles = ['public','user','admin']
# # #
# Role.delete_all
# Appkey.delete_all
# defaultRoles.each do |role|
#   zRole = Role.where(:name => role).create
#   Appkey.create!(:acl_token => SecureRandom.hex, :role => zRole)
# end
#
# User.create!(username:'rykn0wxx',role_id:3,active:true)

# zRegion = JSON.parse(File.read('db/initial/region.json'))
# Region.destroy_all
# Region.create!(zRegion)
#
# zProject = JSON.parse(File.read('db/initial/project.json'))
# Project.destroy_all
# Project.create!(zProject)

# zClient = JSON.parse(File.read('db/initial/client.json'))
# Client.destroy_all
# Client.create!(zClient)

# zExec = JSON.parse(File.read('db/initial/executives.json'))
# RawExecutive.destroy_all
# RawExecutive.create!(zExec)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# defaultRoles = ['public','admin']
# #
# Role.delete_all
# Appkey.delete_all
# defaultRoles.each do |role|
#   zRole = Role.where(:name => role).create
#   Appkey.create!(:acl_token => SecureRandom.hex, :role => zRole)
# end

# == Schema Information
#
# Table name: appkeys
#
#  id         :integer          not null, primary key
#  acl_token  :string
#  role_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_appkeys_on_role_id  (role_id)
#

class Appkey < ApplicationRecord
  belongs_to :role, inverse_of: :appkey
end

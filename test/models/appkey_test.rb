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

require 'test_helper'

class AppkeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: regions
#
#  id           :integer          not null, primary key
#  _id          :integer
#  region_name  :string
#  region_code  :string
#  region_label :string
#  active       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_regions_on_region_name  (region_name) UNIQUE
#

require 'test_helper'

class RegionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

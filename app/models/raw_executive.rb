# == Schema Information
#
# Table name: raw_executives
#
#  id         :integer          not null, primary key
#  month      :string
#  client_id  :integer
#  revenue    :float
#  ebit       :float
#  fte        :float
#  ticket     :integer
#  sla_scope  :integer
#  sla_attain :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_raw_executives_on_client_id  (client_id)
#

class RawExecutive < ApplicationRecord
  has_one :client

end

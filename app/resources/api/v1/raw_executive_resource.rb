class Api::V1::RawExecutiveResource < Api::V1::ApplicationResource
  attributes :month, :revenue, :ebit, :fte, :sla_scope, :sla_attain

  has_one :client

end

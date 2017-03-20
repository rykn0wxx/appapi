class Appkey < ApplicationRecord
  belongs_to :role, inverse_of: :appkey
end

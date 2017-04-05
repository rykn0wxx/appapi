# == Schema Information
#
# Table name: mudapis
#
#  id         :integer          not null, primary key
#  app_name   :string
#  app_code   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mudapi < ApplicationRecord
  validates :app_name, presence: true
  validates :app_code, presence: true
end

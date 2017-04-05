# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string
#  role_id    :integer
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_role_id   (role_id)
#  index_users_on_username  (username) UNIQUE
#

class User < ApplicationRecord
  has_one :role
  validates :username, presence: true
  validates :active, presence: true
end

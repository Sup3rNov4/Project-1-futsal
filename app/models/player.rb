# == Schema Information
#
# Table name: players
#
#  id              :integer          not null, primary key
#  email           :text
#  team_id         :integer
#  name            :text
#  password_digest :text
#  dob             :text
#  created_at      :datetime
#  updated_at      :datetime
#  admin           :boolean          default("false")
#

class Player < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  belongs_to :team
end

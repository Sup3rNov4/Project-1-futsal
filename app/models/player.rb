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
#  admin           :boolean          default(FALSE)
#

class Player < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  belongs_to :teams
  has_and_belongs_to_many :seasons
  has_many :goals
  has_many :games

  # Paperclip
  has_attached_file :photo,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
end

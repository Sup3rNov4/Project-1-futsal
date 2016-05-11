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
  attr_accessor :avatar
  mount_uploader :avatar, AvatarUploader

  validates :email, :presence => true, :uniqueness => true
  belongs_to :team
  has_and_belongs_to_many :seasons
  has_many :goals
  has_many :games
  has_many :posts
  has_many :comments


end

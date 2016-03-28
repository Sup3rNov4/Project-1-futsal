# == Schema Information
#
# Table name: seasons
#
#  id      :integer          not null, primary key
#  season  :text
#  team_id :integer
#

class Season < ActiveRecord::Base
  has_and_belongs_to_many :teams
  has_many :players, :through => :teams
end

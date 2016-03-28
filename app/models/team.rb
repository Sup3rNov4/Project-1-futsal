# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :text
#  competition :text
#

class Team < ActiveRecord::Base
  has_many :players
  has_and_belongs_to_many :seasons
end

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
  has_many :goals, :through => :players
  has_many :games

  def wins
    games.where :won => true

  end

  def losses
    games.where :lost => true

  end

  def draws
    games.where :drawn => true

  end

end

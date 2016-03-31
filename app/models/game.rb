class Game < ActiveRecord::Base
  has_many :goals
  belongs_to :teams
  belongs_to :seasons
end

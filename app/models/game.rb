class Game < ActiveRecord::Base
  has_many :goals
  belongs_to :team
  belongs_to :week
end

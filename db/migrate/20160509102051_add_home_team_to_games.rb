class AddHomeTeamToGames < ActiveRecord::Migration
  def change
    add_column :games, :homeTeam, :boolean
  end
end

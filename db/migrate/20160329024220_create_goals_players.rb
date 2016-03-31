class CreateGoalsPlayers < ActiveRecord::Migration
  def change
    create_table :goals_players, :id => false do |t|
      t.integer :goal_id
      t.integer :player_id
    end
  end
end

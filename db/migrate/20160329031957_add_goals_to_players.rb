class AddGoalsToPlayers < ActiveRecord::Migration
  def change
    add_column :goals, :player_id, :integer
  end
end

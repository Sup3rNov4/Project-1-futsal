class AddGameIdToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :game_id, :integer
  end
end

class CreatePlayersSeasons < ActiveRecord::Migration
  def change
    create_table :players_seasons, :id => false do |t|
      t.integer :player_id
      t.integer :season_id
    end
  end
end

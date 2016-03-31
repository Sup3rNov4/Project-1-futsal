class CreateGamesSeasons < ActiveRecord::Migration
  def change
    create_table :games_seasons, :id => false do |t|
      t.integer :game_id
      t.integer :season_id
    end
  end
end

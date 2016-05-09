class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.text :season
      t.integer :team_id
    end
  end
end

class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean :won
      t.boolean :lost
      t.boolean :drawn
    end
  end
end

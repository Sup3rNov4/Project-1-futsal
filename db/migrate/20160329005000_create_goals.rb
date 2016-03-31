class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :scored
      t.integer :assists
      t.text :conceded
    end
  end
end

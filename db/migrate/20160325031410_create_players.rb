class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.text :email
      t.integer :team_id
      t.text :name
      t.text :password_digest
      t.text :dob
      t.timestamps
    end
  end
end

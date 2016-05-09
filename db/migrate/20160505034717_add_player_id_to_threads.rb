class AddPlayerIdToThreads < ActiveRecord::Migration
  def change
      add_column :threads, :player_id, :integer
  end
end

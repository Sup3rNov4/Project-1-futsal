class AddThreadIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :thread_id, :integer
  end
end

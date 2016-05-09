class AddPostIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :post_id, :integer
  end
end

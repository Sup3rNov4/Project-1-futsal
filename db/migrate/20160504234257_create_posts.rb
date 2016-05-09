class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

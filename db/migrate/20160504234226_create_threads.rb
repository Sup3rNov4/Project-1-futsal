class CreateThreads < ActiveRecord::Migration
  def change
    create_table :threads do |t|
      t.string :title
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

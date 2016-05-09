class Post < ActiveRecord::Base
  belongs_to :player
  belongs_to :thread
end

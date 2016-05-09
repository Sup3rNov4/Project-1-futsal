class Post < ActiveRecord::Base
  belongs_to :player
  belongs_to :topic
  has_many :comments
end

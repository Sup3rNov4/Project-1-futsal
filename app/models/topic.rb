class Topic < ActiveRecord::Base
  has_many :threads
end

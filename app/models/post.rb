class Post < ActiveRecord::Base
  belongs_to :player
  has_many :comments


  def self.search(query)
    where("title like ?", "%#{query}%")
  end
end

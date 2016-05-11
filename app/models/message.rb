class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :player
  validates_presence_of :body, :conversation_id, :player_id

  def message_time
  end
end

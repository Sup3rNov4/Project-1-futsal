class MessagesController < ApplicationController

  before_action do
    @disable_nav = true
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @disable_nav = true
    @messages = @conversation.messages
    if @messages.length > 10
      @over_ten = true
      @messages = @messages[-10..-1]
    end
    if params[:m]
      @over_ten = false
      @messages = @conversation.messages
    end
    if @messages.last
    if @messages.last.player_id != current_player.id
      @messages.last.read = true;
    end
  end
    @message = @conversation.messages.new
  end

  def new
    @disable_nav = true
    @message = @conversation.messages.new
  end

  def create
    @disable_nav = true
    @message = @conversation.messages.new(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

  private
    def message_params
      params.require(:message).permit(:body, :player_id)
    end
  end

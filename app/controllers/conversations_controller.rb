class ConversationsController < ApplicationController
  before_action :authenticate_with_http_basic

  def index
    @disable_nav = true
    @players = Player.all
    @conversations = Conversation.all
    # @conversations = Conversation.paginate(page: params[:page], per_page: 5)
  end

  def show
    @disable_nav = true
  end

  def create
    @disable_nav = true
    if Conversation.between(params[:sender_id], params[:recipient_id])
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    redirect_to conversation_messages_path(@conversation)
  end

  private

    def conversation_params
      params.permit(:sender_id, :recipient_id)
    end

end

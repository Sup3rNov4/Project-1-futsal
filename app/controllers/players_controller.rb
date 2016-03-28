class PlayersController < ApplicationController

before_action :authorise, :only => [:index]

  def u18men
  end

  def u18women
  end

  def aamen
  end

  def aawomen
  end

  def competitions
  end

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new player_params
  if @player.save
    redirect_to root_path
  else
    render :new
  end
  end

  def edit
    @player = @current_player
  end

  def update
    player = @current_player
    player.update player_params
    redirect_to root_path
  end

  private
    def player_params
      params.require(:player).permit(:email, :name, :password, :password_confirmation, :dob)
    end

    def authorise
      redirect_to root_path unless (@current_player.present?) && (@current_player.admin?)
    end
end

# == Schema Information
#
# Table name: players
#
#  id              :integer          not null, primary key
#  email           :text
#  team_id         :integer
#  name            :text
#  password_digest :text
#  dob             :text
#  created_at      :datetime
#  updated_at      :datetime
#  admin           :boolean          default(FALSE)
#

class PlayersController < ApplicationController

  attr_accessor :players
  before_action :authorise, :only => [:index]

  def month3
  end

  def month6
  end

  def alltime
  end

  def u18men
    @teams = Team.all
  end

  def u18women
    @teams = Team.all
  end

  def aamen
    @teams = Team.all
  end

  def aamix
    @teams = Team.all
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
      session[:player_id] = @player.id
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

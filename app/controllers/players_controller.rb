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
  before_filter :disable_forumnav



  def month3
  end

  def month6
  end

  def alltime
  end

  def u18men
    @teams = Team.all
      @disable_forumhead = true
  end

  def u18women
    @teams = Team.all
      @disable_forumhead = true
  end

  def aamen
    @teams = Team.all
      @disable_forumhead = true
  end

  def aamix
    @teams = Team.all
      @disable_forumhead = true
  end

  def competitions
      @disable_forumhead = true
  end

  def index
    @players = Player.all
      @disable_forumhead = true
  end

  def new
    @player = Player.new

  end

  def show
    @player = Player.find(params[:id])
    @team = @player.team_id
      @disable_forumhead = true
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
    @player = current_player
      @disable_forumhead = true
  end

  def update
      @disable_forumhead = true

    player = current_player
    player.update player_params
    redirect_to root_path
  end

  private
    def player_params
      params.require(:player).permit(:email, :name, :password, :password_confirmation, :dob, :avatar)
    end

    def authorise
      redirect_to root_path unless (@current_player.present?) && (@current_player.admin?)
    end
end

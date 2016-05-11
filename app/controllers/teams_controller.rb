class TeamsController < ApplicationController
  def index
    @disable_forumhead = true
    @disable_forumnav = true
    @teams = Team.all
  end

  def show
    @disable_forumhead = true
    @disable_forumnav = true
    @team = Team.find(params[:id])
  end

  def new
    @disable_forumhead = true
    @disable_forumnav = true
  end

  def create
    @disable_forumhead = true
    @disable_forumnav = true
  end

  def update
    @disable_forumhead = true
    @disable_forumnav = true
  end

  def destroy
    @disable_forumhead = true
    @disable_forumnav = true
  end

end

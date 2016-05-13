class SessionController < ApplicationController
  def new
    @disable_forumhead = true
    @disable_forumnav = true
  end

  def create
    player = Player.find_by :email => params[:email]
    if player.present? && player.authenticate(params[:password])
      session[:player_id] = player.id
      redirect_to "/pages/welcome"
    else
      flash[:error] = "Incorrect email address or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:player_id] = nil
    flash[:error] = "You have successfully logged out."
    redirect_to root_path
  end

end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_player, :logged_in?  # this enables these methods to be available in all view and controller

  # protect_from_forgery with: :exception


  def current_player
      @current_player ||= Player.find(session[:player_id]) if session[:player_id]  #returns user object
  end

  def logged_in?
    !!current_player
  end

  def require_player
    if !logged_in?
        flash[:danger] = "You must be logged in to perform that action."
        redirect_to root_path
      end
  end

  end

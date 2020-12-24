class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  # def current_user
  #   current_user ||= Player.find(session[:player_id]) if session[:player_id]
  # end

  def logged_in?
    current_user != nil
  end

end

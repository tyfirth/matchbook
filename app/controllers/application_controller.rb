class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  skip_before_action :verify_authenticity_token

def current_user
  @player = Player.find_by(id: session[:player_id])
end

def logged_in?
  current_user != nil
end

end

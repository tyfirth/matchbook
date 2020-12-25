class SessionsController < ApplicationController

  def new
    render 'users/sessions/new'
    #render 'players/sessions/new'
  end

  def create
    @user = User.find_by(username: params[:user][:username])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to players_path
      else
        @errors = @user.errors.full_messages
        render 'users/sessions/new'
      end
  end

  # def create
  #   #binding.pry
  #   @player = Player.find_by(name: params[:player][:name])
  #     if @player && @player.authenticate(params[:player][:name])
  #       session[:player_id] = @player.id
  #       redirect_to players_path
  #     else
  #       @errors = @user.errors.full_messages
  #       render 'players/sessions/new'
  #     end
  # end

  def destroy
    session.clear

    redirect_to '/'
  end

end

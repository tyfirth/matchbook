class SessionsController < ApplicationController

  def new
    render 'players/sessions/new'
  end

  def create
    @player = Player.find_by(name: params[:player][:name])
      if @player && @player.authenticate(params[:player][:password])
        session[:player_id] = @player.id
        redirect_to @player
      else
        @errors = @player.errors.full_messages
        render 'players/sessions/new'
      end
  end

  def create_with_fb
    #binding.pry
    player = Player.find_or_create_by(name: auth['name']) do |p|
      p.password = 'tyfei'
    end
    player.save
    session[:player_id] = player.id
    redirect_to players_path(player)
  end

  def destroy
    session.clear

    render 'players/home'
  end

  private

  def auth
    request.env['omniauth.auth']['info']
  end

end

class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.save

    redirect_to @player
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    player = Player.find_by(id: params[:id])
    player.update(player_params)

    redirect_to player_path(player)
  end

  def destroy
    Player.find_by(id: params[:id]).destroy

    redirect_to players_path
  end

  private

  def player_params
    params.require(:player).permit(:name, :age, :motto, :favorite_game, :win_phrase, :lose_phrase)
  end

end

class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    @game.matches.build
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      @errors = @game.errors.full_messages
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find_by(id: params[:id])
  end

  def update
    game = game.find_by(id: params[:id])
    game.update(game_params)

    redirect_to game_path(game)
  end

  def destroy

  end

  private

  def game_params
    params.require(:game).permit(:name, :category, :description)
  end

end

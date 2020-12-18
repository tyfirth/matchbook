class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
    @game = Game.new
    @player = Player.new
  end

  def create
    @match = Match.new(match_params)
    @match.save

    redirect_to @match
  end

  def show
    @match = Match.find(params[:id])
    @match_game = Game.find_by(id: @match.game_id)
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])
    @match.update(match_params)
    @match.save

    redirect_to match_path(@match)
  end

  def destroy

  end

  private

  def match_params
    params.require(:match).permit(:title, :match_datetime, :winner, :score, :notes, :game_id, :players)
  end

end

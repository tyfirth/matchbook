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

    redirect_to match_path(@match)
  end

  def show
    @match = Match.find(params[:id])
    @match_game = Game.find_by(id: @match.game_id)
    #do I need players or match_players here?
  end

  def edit
    @match = Match.find_by(id: params[:id])
  end

  def update
    @match = Match.find_by(id: params[:id])
    @match.update(match_params)
    @match.save

    redirect_to match_path(@match)
  end

  def destroy
    @match = Match.find_by(id: params[:id])

    redirect_to matches_path

  end

  private

  def match_params
    params.require(:match).permit(:players, :title, :match_datetime, :winner, :score, :notes, :game_id)
  end

  #getting error unpermitted parameter "players" on new match form...
  #need to add players_ids column to matches_players table?

end

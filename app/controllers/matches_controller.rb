class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
    @match.players.build
  end

  def create
    binding.pry

    @match = Match.new(match_params)

    if @match.save
      redirect_to match_path(@match)
    else
      @errors = @match.errors.full_messages
      render :new
    end
  end

  def show

    @match = Match.find(params[:id])
    @match_game = Game.find_by(id: @match.game_id)
    @match_winner = Player.find_by(name: @match.winner)

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
  Match.find_by(id: params[:id]).destroy

    redirect_to matches_path
  end

  private

  def match_params
    params.require(:match).permit({players_attributes: [:name, :id, :age, :motto, :win_phrase, :lose_phrase, :favorite_game]}, :title, :match_datetime, :winner, :score, :notes, :game_id, {player_ids: []})
  end

  #getting error unpermitted parameter "players" on new match form...
  #need to add players_ids column to matches_players table?

end

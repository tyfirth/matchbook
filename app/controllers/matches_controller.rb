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
    #byebug
    @match = Match.new(match_params)
    #byebug
    #@match.players = params[:match][:players]
    #@match.players.shift
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
    params.require(:match).permit({players: [:name]}, :title, :match_datetime, :winner, :score, :notes, :game_id, :players_ids, games_attributes: [])
  end

  #getting error unpermitted parameter "players" on new match form...
  #need to add players_ids column to matches_players table?

end

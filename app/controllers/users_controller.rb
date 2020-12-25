class UsersController < ApplicationController

  def new
    @user = User.new
    #@player = Player.new
    @user.players.build
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
      #  binding.pry
        redirect_to players_path
      else
        @errors = @user.errors.full_messages
        render :new
      end
  end

  def home
    @user = User.find_by(id: session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      player_attributes: [:id, :name, :age, :motto, :win_phrase, :lose_phrase, :favorite_game]
    )
  end

  # def user_params
  #   params.require(:user).permit(
  #     :username,
  #     :password,
  #     {players_attributes: [:name, :id, :age, :motto, :win_phrase, :lose_phrase, :favorite_game]},
  #     {player_ids: []})
  # end

end

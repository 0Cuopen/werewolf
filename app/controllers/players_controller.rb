class PlayersController < ApplicationController
  def index
    @room = Room.find_by(unique_code: params[:room_unique_code])
    @players = @room.players
    @player = Player.new
    @game = Game.new
  end

  def create
    Player.create!(player_param)

    redirect_to room_players_path(params[:room_unique_code])
  end

  private

  def player_param
    params.require(:player).permit(:room_id, :name)
  end
end

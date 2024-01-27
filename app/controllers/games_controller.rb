class GamesController < ApplicationController
  def index
  end

  def create
    game = Game.create!(game_param)

    redirect_to game_game_settings_path(game)
  end

  private

  def game_param
    params.require(:game).permit(:room_id).merge(status: 'playing')
  end
end

class GameSettingsController < ApplicationController
  def index
    @game = Game.find(params[:game_id])
    @game_setting = GameSetting.new
  end

  def create
    GameSetting.create!(game_setting_param)
    # TODO: add redirect
  end

  private

  def game_setting_param
    params.require(:game_setting).permit(:game_id, :werewolf_count, :citizen_count)
  end
end

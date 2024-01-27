class RoomsController < ApplicationController
  def index
    @room = Room.new
  end

  def show
    @room = Room.find_by(unique_code: params[:unique_code])
  end

  def create
    room = Room.create!(room_params)

    redirect_to room_players_path(room)
  end

  private

  def room_params
    params.require(:room).permit(:unique_code)
  end
end

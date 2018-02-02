class GamesController < ApplicationController

  def edit
    @game = Game.find(params[:id])
  end


  def update
    @game = Game.find(params[:id])
    @game.update_attributes(game_params)
    redirect_to root_path
  end


  def game_params
    params.require(:game).permit(:hometeam_prediction, :awayteam_prediction)
  end

end

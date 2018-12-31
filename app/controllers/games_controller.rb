class GamesController < ApplicationController
  def index
  end

  def create
    # @game.save(game_params)
    Game.new(game_params).save
    # @todo create a dashboard controller/model for housing information about the game
    # redirect_to dashboard_path
    redirect_to dashboard_path
  end

  def new
    @game = Game.new
  end

  def destroy

  end

  def update

  end

  def show

  end

private
  def game_params
    params.require(:game).permit(:name)
  end
end

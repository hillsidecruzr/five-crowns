class GamesController < ApplicationController
  def index
  end

  def create
    Game.new(game_params).save

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

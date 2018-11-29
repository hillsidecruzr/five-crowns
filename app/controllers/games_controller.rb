class GamesController < ApplicationController
  def index
  end

  def create
    Game.new(person_params).save
    # @todo create a dashboard controller/model for housing information about the game
    # redirect_to dashboard_path
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
  def person_params
    params.require(:game).permit(:name)
  end
end
